'use strict';
// Usage: node apply.js <relpath> [--mode gettext|inplace] [--dry]   apply tr/<relpath>.txt onto orig/<relpath>, write to addon dir
//        node apply.js --all [--mode gettext|inplace] [--dry]       apply every tr file (+ dictionary in gettext mode)
// Translation file lines:   <line>.<ord> = <raw replacement text as it appears between the quotes>
//   '#' starts a comment line; append "  @@ph" to a line to bypass the placeholder-equality check; U+2423 = explicit space.
//
// MODES
//  gettext (default): every translated in-code string becomes  ZGV_T("English")  and the Portuguese text goes into
//                     Localization/ptBR_dict.lua.  English mode == upstream text, Portuguese mode == inplace result.
//  inplace          : the Portuguese text replaces the English text inside the source (fixed language).
const fs = require('fs');
const path = require('path');
const { ORIG, ADDON, TR, listStrings, mask, tokenize, placeholders, validShortBody, unescapeLua, luaQuote, xmlPairs, guardedWrite, flushManifest } = require('./lua.js');

const sha10 = (s) => require('crypto').createHash('sha1').update(s, 'utf8').digest('hex').slice(0, 10);
const args = process.argv.slice(2);
const dry = args.includes('--dry');
const FORCE = args.includes('--force'), SEED = args.includes('--seed-manifest');   // see guardedWrite() in lua.js
const BLOCKED = [];
const mi = args.indexOf('--mode');
const MODE = mi >= 0 ? args[mi + 1] : 'gettext';
if (!['gettext', 'inplace'].includes(MODE)) { console.error('unknown --mode ' + MODE); process.exit(1); }

// Files whose output path / post-processing differ from "same path" (always generated in-place: they ARE the pt-BR tables).
const SPECIAL = {
  'ZygorTalentAdvisor/Localization/enUS.lua': {
    out: 'ZygorTalentAdvisor/Localization/ptBR.lua',
    post: (s) => s.replace(/ZygorTalentAdvisor_L\("main", "enUS"/, 'ZygorTalentAdvisor_L("main", "ptBR"'),
    skipMask: true,
  },
  'Localization/enUS.lua': {
    out: 'Localization/ptBR.lua',
    post: (s) => {
      // keep only the "Main" and "Faction" namespaces, re-labelled as ptBR
      const cut = s.indexOf('local plurals = {');
      if (cut > 0) s = s.slice(0, cut);
      s = s.replace(/ZygorGuidesViewer_L\("Main", "enUS"/, 'ZygorGuidesViewer_L("Main", "ptBR"')
           .replace(/ZygorGuidesViewer_L\("Faction", "enUS"/, 'ZygorGuidesViewer_L("Faction", "ptBR"');
      s = s.replace(/^-- These are the main viewer's lines\./m, '-- Brazilian Portuguese (ptBR) translation of the main viewer lines.');
      // keys the code uses but the original enUS.lua never defined (they would show up as raw key names)
      const extras = {
        binding_actionbutton1: 'Botão de Ação Zygor 1', binding_actionbutton2: 'Botão de Ação Zygor 2',
        binding_actionbutton3: 'Botão de Ação Zygor 3', binding_actionbutton4: 'Botão de Ação Zygor 4',
        binding_actionbutton5: 'Botão de Ação Zygor 5',
        gold_clicktosort_desc: 'Clique para ordenar por %s em ordem decrescente',
        gold_clicktosort_asc: 'Clique para ordenar por %s em ordem crescente',
        waypointaddon_notdetected: 'Nenhum addon de waypoints foi detectado.',
        opt_group_general: 'Geral', opt_group_stepdisplay: 'Exibição dos Passos', opt_group_travelsystem: 'Sistema de Viagem',
        opt_group_poi: 'Pontos de Interesse', opt_group_notification: 'Notificações', opt_group_gear: 'Equipamento',
        opt_group_itemscore: 'ItemScore', opt_group_extras: 'Extras', opt_group_profile: 'Perfil', opt_group_about: 'Sobre',
        opt_group_share: 'Compartilhar', opt_group_talentsystem: 'Sistema de Talentos', opt_group_automation: 'Automação',
        opt_group_maps: 'Mapas', opt_group_actionbuttons: 'Botões de Ação',
      };
      let add = '\n\t-- Keys used by the code but missing from the original enUS.lua (they would show up as raw key names)\n';
      for (const [k, v] of Object.entries(extras)) add += '\t["' + k + '"] = "' + v.replace(/"/g, '\\"') + '",\n';
      // upstream typo: code asks for gold_Gathering_14_sum, enUS defines gold_gathering_14_sum
      const g = /\["gold_gathering_14_sum"\] = ("(?:[^"\\]|\\.)*"),/.exec(s);
      if (g) add += '\t["gold_Gathering_14_sum"] = ' + g[1] + ',\n';
      const idx = s.indexOf('\n} end)');
      if (idx > 0) s = s.slice(0, idx) + add + s.slice(idx);
      return s.replace(/\s+$/, '\n');
    },
    skipMask: true,
  },
};

function parseTr(text) {
  const entries = [];
  text.split(/\r?\n/).forEach((raw, i) => {
    if (!raw.trim() || raw.startsWith('#')) return;
    const m = /^(\d+\.\d+) = (.*)$/.exec(raw);
    if (!m) { entries.push({ err: 'bad line ' + (i + 1) + ': ' + raw.slice(0, 80) }); return; }
    let val = m[2].replace(/␣/g, ' '), ph = false;   // U+2423 (open box) = explicit space, survives editors that trim line ends
    if (/  @@ph$/.test(val)) { ph = true; val = val.replace(/  @@ph$/, ''); }
    entries.push({ id: m[1], val, ph, lineNo: i + 1 });
  });
  return entries;
}
function trParts(rel) {
  const parts = [TR + '/' + rel + '.txt'];
  for (let k = 1; k <= 30; k++) parts.push(TR + '/' + rel + '.' + k + '.txt');
  return parts.filter(p => fs.existsSync(p));
}
// the code concatenates around many labels: force the original's leading/trailing whitespace
function normalizeVal(orig, val) {
  const l0 = /^\s*/.exec(orig)[0], t0 = /\s*$/.exec(orig)[0];
  return orig.trim() ? l0 + val.replace(/^\s+|\s+$/g, '') + t0 : val;
}
function walk(dir, base = '') {
  let res = [];
  for (const f of fs.readdirSync(dir, { withFileTypes: true })) {
    const p = base ? base + '/' + f.name : f.name;
    if (f.isDirectory()) res = res.concat(walk(dir + '/' + f.name, p));
    else if (f.name.endsWith('.txt')) res.push(p.replace(/(\.\d+)?\.txt$/, ''));
  }
  return res;
}
const allLuaRels = () => [...new Set(walk(TR))].sort().filter(r => /\.lua$/.test(r));
// runtime value of a string token body: short strings resolve escapes; long strings [[...]] are literal (a first newline is dropped)
function rtVal(s, body) { return s.type === 'long' ? body.replace(/^\r?\n/, '') : unescapeLua(body); }

// ---------- gettext plan: which (English -> Portuguese) pairs exist, and context numbers for conflicts ----------
let CTX = null;   // Map(en runtime) -> Map(pt runtime -> ctx number|undefined)
function buildPlan() {
  const groups = new Map();
  let order = 0;
  for (const rel of allLuaRels()) {
    if (SPECIAL[rel]) continue;
    const src = fs.readFileSync(ORIG + '/' + rel, 'utf8');
    const byId = new Map(listStrings(src).strings.map(s => [s.id, s]));
    for (const p of trParts(rel)) for (const e of parseTr(fs.readFileSync(p, 'utf8'))) {
      if (e.err) continue;
      const s = byId.get(e.id); if (!s) continue;
      let en, pt; try { en = rtVal(s, s.body); pt = rtVal(s, normalizeVal(s.body, e.val)); } catch (x) { continue; }
      if (!groups.has(en)) groups.set(en, new Map());
      const g = groups.get(en);
      if (!g.has(pt)) g.set(pt, { count: 0, order: order++ });
      g.get(pt).count++;
    }
  }
  CTX = new Map();
  for (const [en, g] of groups) {
    const variants = [...g.entries()].sort((a, b) => b[1].count - a[1].count || a[1].order - b[1].order);
    const m = new Map();
    variants.forEach(([pt], i) => m.set(pt, i === 0 ? undefined : i + 1));
    CTX.set(en, m);
  }
}

// ---------- render a gettext file back to plain English / plain Portuguese (used for validation) ----------
function renderWrapped(out, want, sites) {
  const toks = tokenize(out);
  let res = '', k = 0;
  for (let i = 0; i < toks.length; i++) {
    const t = toks[i];
    if (t.type === 'code') {
      const code = out.slice(t.start, t.end);
      if (code.endsWith('ZGV_T(') && i + 2 < toks.length && (toks[i + 1].type === 'str' || toks[i + 1].type === 'long') && toks[i + 2].type === 'code') {
        const closer = /^(?:, \d+)?\)/.exec(out.slice(toks[i + 2].start, toks[i + 2].end));
        if (closer) {
          res += code.slice(0, -6);
          const st = toks[i + 1];
          const lit = out.slice(st.start, st.end);
          res += want === 'en' ? lit : lit.slice(0, st.bodyStart - st.start) + sites[k].ptRaw + lit.slice(st.bodyEnd - st.start);
          k++;
          toks[i + 2] = Object.assign({}, toks[i + 2], { start: toks[i + 2].start + closer[0].length });
          i += 1;
          continue;
        }
      }
      res += code;
    } else res += out.slice(t.start, t.end);
  }
  if (k !== sites.length) throw new Error('wrapper count mismatch ' + k + ' vs ' + sites.length);
  return res;
}

const DICT = [];          // {en, pt, ctx} collected from all files in gettext mode

function applyOne(rel) {
  const existing = trParts(rel);
  if (!existing.length) { console.log('  (no translation file for ' + rel + ')'); return { ok: true, n: 0 }; }
  const src = fs.readFileSync(ORIG + '/' + rel, 'utf8');
  const { strings } = listStrings(src);
  const byId = new Map(strings.map(s => [s.id, s]));
  const anchorFile = TR + '/_anchors.json';
  const anchors = fs.existsSync(anchorFile) ? (JSON.parse(fs.readFileSync(anchorFile, 'utf8'))[rel] || null) : null;
  const entries = [].concat(...existing.map(p => parseTr(fs.readFileSync(p, 'utf8'))));
  const errors = [], warns = [];
  const repl = new Map();
  for (const e of entries) {
    if (e.err) { errors.push(e.err); continue; }
    const s = byId.get(e.id);
    if (!s) { errors.push('unknown id ' + e.id + ' (tr line ' + e.lineNo + ')'); continue; }
    if (repl.has(e.id)) { errors.push('duplicate id ' + e.id); continue; }
    const orig = s.body; let val = e.val;
    if (anchors && anchors[e.id] && anchors[e.id] !== sha10(orig)) { errors.push(e.id + ': ORIGINAL TEXT CHANGED since the translation was made (line numbers shifted?) -> ' + orig.slice(0, 60)); continue; }
    val = normalizeVal(orig, val);
    if (s.type === 'str') {
      const bad = validShortBody(val, s.q);
      if (bad) { errors.push(e.id + ': ' + bad + ' -> ' + val.slice(0, 70)); continue; }
    } else if (val.includes(']' + '=' .repeat(0) + ']') && s.type === 'long') {
      errors.push(e.id + ': long string terminator inside text'); continue;
    }
    if (!e.ph) {
      const a = placeholders(orig).join('|~|'), b = placeholders(val).join('|~|');
      if (a !== b) { errors.push(e.id + ': placeholders differ\n     EN ' + orig + '\n     PT ' + val + '\n     ' + JSON.stringify(placeholders(orig)) + ' vs ' + JSON.stringify(placeholders(val))); continue; }
    }
    repl.set(e.id, val);
  }
  const special = SPECIAL[rel];
  const gettext = MODE === 'gettext' && !special;

  // rebuild: outPT = fixed Portuguese (inplace); outWrapped = ZGV_T("English") version (gettext)
  let outPT = '', outWrapped = '';
  const sites = [];
  const toks = tokenize(src);
  let sIdx = 0;
  for (const t of toks) {
    if (t.type === 'str' || t.type === 'long') {
      const s = strings[sIdx++];
      const lit = src.slice(t.start, t.end);
      if (repl.has(s.id)) {
        outPT += src.slice(t.start, t.bodyStart) + repl.get(s.id) + src.slice(t.bodyEnd, t.end);
        if (gettext) {
          if (/[A-Za-z0-9_]$/.test(outWrapped)) errors.push(s.id + ': string glued to an identifier, cannot wrap');
          let en = null, pt = null, ctx;
          try { en = rtVal(s, s.body); pt = rtVal(s, repl.get(s.id)); ctx = CTX.get(en).get(pt); } catch (x) { errors.push(s.id + ': ' + x.message); }
          outWrapped += 'ZGV_T(' + lit + (ctx ? ', ' + ctx : '') + ')';
          sites.push({ id: s.id, ptRaw: repl.get(s.id), en, pt, ctx });
        }
      } else { outPT += lit; outWrapped += lit; }
    } else { const c = src.slice(t.start, t.end); outPT += c; outWrapped += c; }
  }
  // validate: only string bodies may differ
  if (!special || !special.skipMask) {
    if (mask(outPT) !== mask(src)) errors.push('MASK MISMATCH: code outside strings changed!');
  }
  let out = outPT;
  if (gettext && !errors.length) {
    try {
      if (renderWrapped(outWrapped, 'en', sites) !== src) errors.push('gettext EN render != original source');
      if (renderWrapped(outWrapped, 'pt', sites) !== outPT) errors.push('gettext PT render != in-place translation');
    } catch (x) { errors.push('gettext render: ' + x.message); }
    out = outWrapped;
  }
  if (special && special.post) out = special.post(out);
  if (special && special.skipMask) { try { tokenize(out); } catch (ex) { errors.push('output does not tokenize: ' + ex.message); } }

  // optional code patches (tr/<rel>.patch.js exports [{find, replace}]); each find must match exactly once
  const patchPath = TR + '/' + rel + '.patch.js';
  if (fs.existsSync(patchPath)) {
    delete require.cache[require.resolve(patchPath)];
    for (const p of require(patchPath)) {
      const cnt = out.split(p.find).length - 1;
      if (cnt !== 1) { errors.push('patch matched ' + cnt + ' times (need 1): ' + JSON.stringify(p.find.slice(0, 70))); continue; }
      out = out.replace(p.find, () => p.replace);
    }
    try { tokenize(out); } catch (ex) { errors.push('patched output does not tokenize: ' + ex.message); }
  }
  const target = ADDON + '/' + (special ? special.out : rel);
  if (errors.length) {
    console.log('  ' + rel + ': ' + errors.length + ' ERROR(S) - not written');
    errors.slice(0, 40).forEach(x => console.log('    ! ' + x));
    return { ok: false, n: 0 };
  }
  warns.slice(0, 20).forEach(x => console.log('    ~ ' + x));
  const outRel = special ? special.out : rel;
  const wr = guardedWrite(outRel, out, { dry, force: FORCE, seed: SEED });
  if (wr === 'blocked') BLOCKED.push(outRel);
  for (const st of sites) DICT.push({ en: st.en, pt: st.pt, ctx: st.ctx });   // (a blocked file still contains its ZGV_T calls)
  console.log('  ' + rel + (special ? ' -> ' + special.out : '') + ': ' + repl.size + ' strings ' + (gettext ? 'wrapped ZGV_T()' : 'translated') + (dry ? ' [dry]' : '') + (wr === 'blocked' ? '   ** BLOCKED: edited outside the tools, NOT overwritten (see README) **' : ''));
  return { ok: true, n: repl.size };
}

function writeDictionary() {
  // strings that live inside XML scripts (SetText("...")) are part of the same dictionary
  for (const f of walk(TR).filter(p => p.endsWith('.xml.xml'))) {   // tr/<name>.xml.xml.txt  (walk() strips the final .txt)
    const file = TR + '/' + f + '.txt';
    if (!fs.existsSync(file)) continue;
    for (const pr of xmlPairs(fs.readFileSync(file, 'utf8'))) {
      if (pr.kind !== 'call') continue;
      DICT.push({ en: unescapeLua(pr.enRaw), pt: unescapeLua(pr.ptRaw), ctx: undefined });
    }
  }
  const main = new Map(), alt = new Map();
  for (const d of DICT) {
    if (!d.ctx) main.set(d.en, d.pt);
    else { if (!alt.has(d.ctx)) alt.set(d.ctx, new Map()); alt.get(d.ctx).set(d.en, d.pt); }
  }
  const sorted = (m) => [...m.entries()].sort((a, b) => (a[0] < b[0] ? -1 : a[0] > b[0] ? 1 : 0));
  let o = '-- Portuguese (Brazil) translation of the texts written directly in the addon\'s Lua/XML code.\n' +
    '-- GENERATED FILE. Key = original English text; value = Portuguese.\n' +
    '-- Only executed when the Portuguese language is active (ZGV_LANG_PT, set in Localization/Base.lua).\n' +
    'if not ZGV_LANG_PT then return end\n\nZGV_T_Register({\n';
  for (const [k, v] of sorted(main)) o += '\t[' + luaQuote(k) + '] = ' + luaQuote(v) + ',\n';
  o += '}, {\n';
  for (const [n, m] of [...alt.entries()].sort((a, b) => a[0] - b[0])) {
    o += '\t[' + n + '] = {\n';
    for (const [k, v] of sorted(m)) o += '\t\t[' + luaQuote(k) + '] = ' + luaQuote(v) + ',\n';
    o += '\t},\n';
  }
  o += '})\n';
  tokenize(o);
  if (guardedWrite('Localization/ptBR_dict.lua', o, { dry, force: FORCE, seed: SEED }) === 'blocked') BLOCKED.push('Localization/ptBR_dict.lua');
  console.log('  Localization/ptBR_dict.lua: ' + main.size + ' entries (+' + [...alt.values()].reduce((a, m) => a + m.size, 0) + ' context variants)' + (dry ? ' [dry]' : ''));
}

if (MODE === 'gettext') buildPlan();
if (args.includes('--all')) {
  let total = 0, bad = 0;
  for (const rel of allLuaRels()) { const r = applyOne(rel); if (!r.ok) bad++; total += r.n; }
  if (MODE === 'gettext' && !bad) writeDictionary();
  console.log('TOTAL strings ' + (MODE === 'gettext' ? 'wrapped' : 'translated') + ': ' + total + (bad ? '   FILES WITH ERRORS: ' + bad : ''));
  if (SEED) console.log('manifest seeded: ' + TR + '/_generated.json (nothing was written to the addon)');
  if (BLOCKED.length) console.log('\n' + BLOCKED.length + ' FILE(S) BLOCKED because they were edited outside the tools (their changes were kept):\n  ' + BLOCKED.join('\n  ') + '\n  -> port those edits into tr/<file>.patch.js, or use --force to overwrite them.');
  flushManifest(dry);
  process.exit(bad ? 1 : 0);
} else {
  const rel = args.filter((a, i) => !a.startsWith('--') && args[i - 1] !== '--mode')[0];
  const r = applyOne(rel);
  if (MODE === 'gettext') console.log('  (single-file run: re-run with --all to regenerate Localization/ptBR_dict.lua)');
  flushManifest(dry);
  process.exit(r.ok ? 0 : 1);
}
