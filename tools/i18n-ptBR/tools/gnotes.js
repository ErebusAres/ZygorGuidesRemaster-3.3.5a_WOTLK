'use strict';
// Guide-notes translation workflow (dictionary English text -> pt-BR, applied by the parser at run time).
//   node gnotes.js init                 freeze/extend the English sources  gsrc/<group>.tsv   (id <TAB> English)
//   node gnotes.js stats                translated / pending per group
//   node gnotes.js next <group> [N]     print the next N pending texts as  "id = English"
//   node gnotes.js build                validate everything in tr/guides/<group>/*.txt  ("id = Portugues", "id = @" = keep English)
//                                       and write Localization/GuideNotes_ptBR_<group>_<n>.lua (+ load.xml block)
const fs = require('fs'), path = require('path');
const { extractBody, loadedFiles, readFile } = require('./gextract.js');
const { ADDON, TR, luaQuote } = require('./lua.js');

const GSRC = path.join(TR, '..', 'gsrc'), GTR = path.join(TR, 'guides');
const CHUNK = 2500;

const isAllianceFile = (rel) => /Alliance|\/A-|QuestInstancesA\b|InstancesA\.|Achievements\/Ares|AresAchievement/i.test(rel) || /\/A_/.test(rel);
// priority order = order of the groups; a text belongs to the first group that contains it
const GROUPS = [
  ['lev', (f) => f === 'Leveling/ZygorGuidesAlliance.lua'],
  ['inc', (f) => f === 'ZygorIncludesAlliance.lua'],
  ['dly', (f) => /^(Retail\/)?Dailies\//.test(f)],
  ['d80', (f) => /Ding80|BloodmystIsleTBC/.test(f)],
  ['rlv', (f) => /^Retail\/Leveling\//.test(f)],
  ['dng', (f) => /^Retail\/Dungeons\/|^Dungeons\//.test(f)],
  ['ach', (f) => /^Achievements\//.test(f)],
  ['prf', (f) => /^(Retail\/)?Professions\//.test(f)],
  ['oth', () => true],
];
const groupOf = (f) => GROUPS.find(([, fn]) => fn(f))[0];

// texts that are just names / labels (kept in English automatically): every word capitalised (small words allowed), no verb start
const VERBS = new Set(('accept ask assist attack avoid activate apply approach assemble back bank begin board bring burn buy cast check choose click collect complete congratulations continue craft create cross defeat defend deliver destroy dig disenchant drink drop eat enter equip escort explore feed fill find finish fish fly follow free gain get give go grab head hearth ignite inspect interact investigate jump kill learn leave light look loot mount note open pick place protect pull push read reach release rescue return ride run search sell set skip slay speak start stay swim take talk teleport tell throw train travel turn use visit wait walk watch').split(' '));
const SMALL = new Set(['of', 'the', 'and', 'in', 'on', 'at', 'to', 'for', 'de', 'la', 'el', 'a', 'an', "o'", 'von', 'van', 'du', 'des']);
// first words that are verbs, learnt from what was already translated: English first word whose Portuguese starts with an infinitive
let LEARNED = null;
function learnedVerbs() {
  if (LEARNED) return LEARNED;
  LEARNED = new Set();
  for (const [g] of GROUPS) {
    const byId = new Map(readTsv(path.join(GSRC, g + '.tsv')));
    for (const [id, pt] of loadTr(g)) {
      const en = byId.get(id); if (!en || pt === '@') continue;
      const e1 = en.split(/\s+/)[0].toLowerCase().replace(/[^a-z]/g, ''), p1 = pt.split(/\s+/)[0];
      if (e1 && /^[A-Za-zÀ-ÿ]+(ar|er|ir|or|ôr)$/i.test(p1) && !/^[A-Z][a-z]+(er|or)$/.test(en.split(/\s+/)[0]) ) LEARNED.add(e1);
    }
  }
  return LEARNED;
}
function looksLikeName(t) {
  if (/[.!?:;]$/.test(t) || /\s{2,}/.test(t)) return false;
  if (/\d+(?:\.\d+)?,\s*\d+/.test(t)) return false;          // contains coordinates -> a sentence about a place
  const words = t.split(/\s+/);
  if (words.length > 7) return false;
  const w0 = words[0].toLowerCase().replace(/[^a-z]/g, '');
  if (VERBS.has(w0) || learnedVerbs().has(w0)) return false;
  if (/^(at|also|hurry|right-click|fully|target|mark|shut|put|send|make)$/.test(w0)) return false;
  return words.every((w, i) => /^[A-Z0-9'\[\(\-]/.test(w) || (i > 0 && SMALL.has(w.toLowerCase())) || /^[0-9.,]+$/.test(w));
}
const noLetters = (t) => !/[A-Za-z]{2}/.test(t);

function readTsv(f) { return fs.existsSync(f) ? fs.readFileSync(f, 'utf8').split('\n').filter(Boolean).map((l) => { const i = l.indexOf('\t'); return [Number(l.slice(0, i)), l.slice(i + 1)]; }) : []; }

function collect() { // group -> ordered unique English texts (Alliance guides/includes only); a text belongs to the FIRST group (priority order) that uses it
  const seenFiles = new Set(); const files = loadedFiles().filter((f) => !seenFiles.has(f) && seenFiles.add(f));
  const per = {}; for (const [g] of GROUPS) per[g] = []; const owner = new Map();
  for (const [grp] of GROUPS) {
    for (const rel of files) {
      if (groupOf(rel) !== grp) continue;
      let items; try { items = readFile(rel); } catch (e) { continue; }
      for (const g of items) {
        const isA = isAllianceFile(rel) || g.faction === 'alliance' || /Alliance/i.test(g.title);
        if (!isA) continue;
        for (const e of extractBody(g.body)) {
          if (e.kind !== "'" && e.kind !== 'tip' && e.kind !== 'description') continue;
          if (owner.has(e.text)) continue;
          owner.set(e.text, grp); per[grp].push(e.text);
        }
      }
    }
  }
  return per;
}

function cmdInit() {
  fs.mkdirSync(GSRC, { recursive: true });
  const per = collect(); let added = 0;
  for (const [g] of GROUPS) {
    const f = path.join(GSRC, g + '.tsv'); const cur = readTsv(f);
    const have = new Set(cur.map((x) => x[1])); let n = cur.length ? Math.max(...cur.map((x) => x[0])) : 0;
    const out = cur.map((x) => x[0] + '\t' + x[1]);
    for (const t of per[g]) { if (have.has(t)) continue; if (/[\t\n]/.test(t)) { console.log('skipped (tab/newline in text): ' + JSON.stringify(t.slice(0, 50))); continue; } n++; out.push(n + '\t' + t); added++; }
    fs.writeFileSync(f, out.join('\n') + '\n');
  }
  // texts that also occur in an earlier group but were frozen in a later one are harmless duplicates
  console.log('sources written to ' + GSRC + ' (+' + added + ' new texts)');
}

function loadTr(g) { // id -> pt (later files override earlier ones)
  const m = new Map(); const dir = path.join(GTR, g);
  if (!fs.existsSync(dir)) return m;
  for (const f of fs.readdirSync(dir).filter((x) => /\.txt$/.test(x)).sort()) {
    for (const line of fs.readFileSync(path.join(dir, f), 'utf8').split('\n')) {
      const mm = /^(\d+) = (.*)$/.exec(line.replace(/\s+$/, '')); if (mm) m.set(Number(mm[1]), mm[2]);
    }
  }
  return m;
}

// ---- validation ------------------------------------------------------------------------------------------------
const numTokens = (s) => (s.match(/\d+(?:[.,]\d+)*/g) || []).sort().join(' ');
const idTokens = (s) => (s.match(/##\d+\+*/g) || []).sort().join(' ');
const coordTokens = (s) => (s.match(/\d+(?:\.\d+)?,\s*\d+(?:\.\d+)?/g) || []).join(' ');
const brackets = (s) => (s.match(/\[[^\]]*\]/g) || []).sort().join(' ');
function check(en, pt) {
  const errs = [];
  if (/[|\t\n\r]/.test(pt)) errs.push('contains | tab or newline');
  if (pt.includes('//')) errs.push('contains //');
  if (/^--/.test(pt)) errs.push('starts with --');
  if (/_[^_\s][^_]*_/.test(pt) && !/_[^_\s][^_]*_/.test(en)) errs.push('contains _italic_ pattern');
  if (/^'/.test(pt)) errs.push('starts with quote');
  if (numTokens(en) !== numTokens(pt)) errs.push('numbers differ: [' + numTokens(en) + '] vs [' + numTokens(pt) + ']');
  if (idTokens(en) !== idTokens(pt)) errs.push('##ids differ');
  if (coordTokens(en) !== coordTokens(pt)) errs.push('coordinates differ');
  if (brackets(en) !== brackets(pt)) errs.push('[bracket] contents differ: ' + brackets(en) + ' vs ' + brackets(pt));
  if (/^\s|\s$/.test(pt)) errs.push('leading/trailing space');
  return errs;
}

let GTR_MAP = null; // English text -> Portuguese, over all groups
function globalTr() {
  if (GTR_MAP) return GTR_MAP; GTR_MAP = new Map();
  for (const [g] of GROUPS) { const byId = new Map(readTsv(path.join(GSRC, g + '.tsv'))); for (const [id, pt] of loadTr(g)) { const en = byId.get(id); if (en) GTR_MAP.set(en, pt); } }
  return GTR_MAP;
}
function status(g) {
  const src = readTsv(path.join(GSRC, g + '.tsv')); const tr = loadTr(g); const pending = [];
  let kept = 0, done = 0; const gm = globalTr();
  for (const [id, en] of src) {
    if (tr.has(id)) { if (tr.get(id) === '@') kept++; else done++; continue; }
    if (gm.has(en)) { if (gm.get(en) === '@') kept++; else done++; continue; }
    if (noLetters(en) || looksLikeName(en)) { kept++; continue; }
    pending.push([id, en]);
  }
  return { src, tr, pending, kept, done };
}

function cmdStats() {
  let T = 0, D = 0, K = 0, P = 0;
  console.log('group   texts  translated  auto/keep  pending');
  for (const [g] of GROUPS) {
    const s = status(g); if (!s.src.length) continue;
    console.log(g.padEnd(6) + String(s.src.length).padStart(7) + String(s.done).padStart(11) + String(s.kept).padStart(11) + String(s.pending.length).padStart(9));
    T += s.src.length; D += s.done; K += s.kept; P += s.pending.length;
  }
  console.log('TOTAL '.padEnd(6) + String(T).padStart(7) + String(D).padStart(11) + String(K).padStart(11) + String(P).padStart(9));
}

function cmdNext(g, n) {
  const s = status(g); const chars = s.pending.slice(0, n).reduce((a, x) => a + x[1].length, 0);
  console.error('# ' + g + ': ' + s.pending.length + ' pending; showing ' + Math.min(n, s.pending.length) + ' (' + chars + ' chars)');
  for (const [id, en] of s.pending.slice(0, n)) console.log(id + ' = ' + en);
}

function cmdKept(g) { // auto-kept (name-like) texts that have no translation yet, for a final review
  const s = status(g); const pend = new Set(s.pending.map((x) => x[0]));
  const gm = globalTr();
  for (const [id, en] of s.src) if (!s.tr.has(id) && !pend.has(id) && !gm.has(en)) console.log(id + ' = ' + en);
}

function cmdBuild() {
  let total = 0, bad = 0; const files = [];
  for (const [g] of GROUPS) {
    const src = readTsv(path.join(GSRC, g + '.tsv')); if (!src.length) continue;
    const tr = loadTr(g); const byId = new Map(src); const entries = [];
    for (const [id, pt] of tr) {
      if (!byId.has(id)) { console.log('  ! ' + g + ' id ' + id + ': not in source'); bad++; continue; }
      if (pt === '@') continue;
      const en = byId.get(id); const errs = check(en, pt);
      if (errs.length) { bad++; console.log('  ! ' + g + ' ' + id + ': ' + errs.join('; ') + '\n      EN: ' + en + '\n      PT: ' + pt); continue; }
      if (pt !== en) entries.push([en, pt]);
    }
    for (let i = 0, c = 1; i < entries.length; i += CHUNK, c++) {
      const part = entries.slice(i, i + CHUNK); const name = 'GuideNotes_ptBR_' + g + '_' + c + '.lua';
      const body = '-- Generated file: notes and tips of the guides, group "' + g + '" (English -> Portuguese). Do not edit by hand.\n' +
        '-- Only loaded in Portuguese mode (ZGV_LANG_PT); used by ZGV_GT() in Parser.lua.\n' +
        'if not ZGV_LANG_PT then return end\nZGV_GT_Register({\n' + part.map(([en, pt]) => '[' + luaQuote(en) + ']=' + luaQuote(pt) + ',').join('\n') + '\n})\n';
      fs.writeFileSync(path.join(ADDON, 'Localization', name), body, 'utf8'); files.push(name);
    }
    total += entries.length; console.log(g + ': ' + entries.length + ' entries');
  }
  // remove stale generated files, refresh the load.xml block
  const locDir = path.join(ADDON, 'Localization');
  for (const f of fs.readdirSync(locDir)) if (/^GuideNotes_ptBR_.*\.lua$/.test(f) && !files.includes(f)) fs.unlinkSync(path.join(locDir, f));
  const lx = path.join(locDir, 'load.xml'); let x = fs.readFileSync(lx, 'utf8');
  const block = '<!-- GUIDENOTES:BEGIN (generated by tools/i18n-ptBR/tools/gnotes.js; only used in Portuguese mode) -->\n' + files.map((f) => '<Script file="' + f + '"/>').join('\n') + (files.length ? '\n' : '') + '<!-- GUIDENOTES:END -->';
  if (!/GUIDENOTES:BEGIN/.test(x)) throw new Error('load.xml has no GUIDENOTES markers');
  x = x.replace(/<!-- GUIDENOTES:BEGIN[\s\S]*?GUIDENOTES:END -->/, block); fs.writeFileSync(lx, x, 'utf8');
  console.log('\n' + total + ' dictionary entries in ' + files.length + ' files; validation problems: ' + bad);
  process.exit(bad ? 1 : 0);
}

const [cmd, a, b] = process.argv.slice(2);
if (cmd === 'init') cmdInit(); else if (cmd === 'stats') cmdStats(); else if (cmd === 'next') cmdNext(a, Number(b || 200)); else if (cmd === 'kept') cmdKept(a); else if (cmd === 'build') cmdBuild();
else console.log('usage: gnotes.js init | stats | next <group> [N] | kept <group> | build');
