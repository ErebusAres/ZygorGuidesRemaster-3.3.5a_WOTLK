'use strict';
// RUNTIME test of the language mechanism inside a real Lua VM (fengari, Lua 5.3 - close enough for this plain code):
// loads the addon's Localization files in TOC order under different simulated WoW situations and checks the results.
const fs = require('fs');
const { lua, lauxlib, lualib, to_luastring, to_jsstring } = require('fengari');
const { ADDON, unescapeLua } = require('../tools/lua.js');

const LOC = ADDON + '/Localization/', TA = ADDON + '/ZygorTalentAdvisor/Localization/';
// same files, same order as Localization/load.xml (this includes the generated GuideNotes_ptBR_*.lua dictionaries)
const MAIN_FILES = [...fs.readFileSync(LOC + 'load.xml', 'utf8').replace(/<!--[\s\S]*?-->/g, '').matchAll(/<Script file="([^"]+)"/g)]
  .map(m => (m[1] === 'Base.lua' && process.env.ZGV_TEST_BASE) ? process.env.ZGV_TEST_BASE : LOC + m[1]);
const TA_FILES = ['Base.lua', 'enUS.lua', 'deDE.lua', 'esES.lua', 'frFR.lua', 'koKR.lua', 'ruRU.lua', 'ptBR.lua'].map(f => TA + f).filter(f => fs.existsSync(f));

function luaQ(s) { // JS string -> Lua string literal (byte-exact, UTF-8)
  let out = '"';
  for (const b of Buffer.from(s, 'utf8')) out += (b >= 32 && b < 127 && b !== 34 && b !== 92) ? String.fromCharCode(b) : '\\' + String(b).padStart(3, '0');
  return out + '"';
}
function newState(prelude) {
  const L = lauxlib.luaL_newstate(); lualib.luaL_openlibs(L);
  exec(L, prelude, 'prelude');
  return L;
}
function exec(L, src, name) {
  const buf = typeof src === 'string' ? Buffer.from(src, 'utf8') : src;
  const bytes = new Uint8Array(buf.buffer, buf.byteOffset, buf.length);
  if (lauxlib.luaL_loadbuffer(L, bytes, bytes.length, to_luastring('=' + name)) !== lua.LUA_OK || lua.lua_pcall(L, 0, 1, 0) !== lua.LUA_OK) {
    const msg = to_jsstring(lua.lua_tostring(L, -1)); lua.lua_pop(L, 1); throw new Error(name + ': ' + msg);
  }
  const t = lua.lua_type(L, -1);
  const res = t === lua.LUA_TSTRING ? to_jsstring(lua.lua_tostring(L, -1)) : null;
  lua.lua_pop(L, 1); return res;
}
const prelude = (o) => String.raw`
  unpack = unpack or table.unpack; loadstring = loadstring or load; table.getn = table.getn or function(t) return #t end
  string.gfind = string.gfind or string.gmatch; strfind = string.find; strsub = string.sub; strlen = string.len; format = string.format
  function GetLocale() return ${luaQ(o.client || 'enUS')} end
  function GetAddOnInfo(n)
    ${o.present ? `return n, "title", "notes", ${o.enabled ? 'true' : 'false'}, true, ""` : `return nil`}
  end
  -- canonical, newline-safe encoding of a table:  key <TAB> value  per line (backslash and newline escaped)
  ESC = function(s) s = s:gsub("\\", "\\\\"); s = s:gsub("\n", "\\n"); s = s:gsub("\t", "\\t"); return s end
  ENC = function(v) if type(v) == "string" then return ESC(v) end return "<" .. type(v) .. ">" end
  ENCMAP = function(t) local m = {}; for k, v in pairs(t) do m[ESC(tostring(k))] = ENC(v) end return m end
  DUMP = function(t)
    local m, ks = ENCMAP(t), {}
    for k in pairs(m) do ks[#ks+1] = k end
    table.sort(ks)
    local out = {}
    for _, k in ipairs(ks) do out[#out+1] = k .. "\t" .. m[k] end
    return table.concat(out, "\n")
  end
  -- WoW global strings (e.g. CONFIRM_LEARN_PREVIEW_TALENTS) do not exist in this bare VM: give them a placeholder
  setmetatable(_G, {__index = function(t, k) if type(k) == "string" and k:match("^[A-Z][A-Z_0-9]+$") and not k:match("^ZGV") then return "<" .. k .. ">" end end})
`;

function loadAll(L, files) { for (const f of files) exec(L, fs.readFileSync(f), f.replace(ADDON, '')); }

let fails = 0;
const ok = (c, msg) => { if (!c) { fails++; console.log('  FAIL: ' + msg); } };
const NAMES = ['Main', 'Faction', 'Specials', 'G_string', 'GuideFolders'];

// ---------- baseline: pure upstream behaviour (enUS file only, no language layer) ----------
function baseline() {
  const L = newState(prelude({ present: false }));
  loadAll(L, [LOC + 'Base.lua', LOC + 'enUS.lua']);        // ZGV_LANG_PT true here but no overlay files are loaded -> enUS values
  const r = {}; for (const n of ['Main', 'Faction', 'Specials', 'G_string']) r[n] = exec(L, `return DUMP(ZygorGuidesViewer_L(${luaQ(n)}))`, 'dump');
  return r;
}
const base = baseline();

// ---------- dictionary pairs ----------
function parseDict(text) {
  const main = new Map(), alt = new Map(); let ctx = null, section = 'main';
  for (const line of text.split('\n')) {
    if (/^\}, \{$/.test(line)) { section = 'alt'; continue; }
    let m = /^\t\[(\d+)\] = \{$/.exec(line); if (m) { ctx = Number(m[1]); alt.set(ctx, new Map()); continue; }
    m = /^\t\t?\["((?:[^"\\]|\\.)*)"\] = "((?:[^"\\]|\\.)*)",$/.exec(line); if (!m) continue;
    const k = unescapeLua(m[1]), v = unescapeLua(m[2]);
    if (line.startsWith('\t\t')) alt.get(ctx).set(k, v); else if (section === 'main') main.set(k, v);
  }
  return { main, alt };
}
const { main: dmain, alt: dalt } = parseDict(fs.readFileSync(LOC + 'ptBR_dict.lua', 'utf8'));
const pairsLua = 'PAIRS = {' + [...dmain].map(([k, v]) => `{${luaQ(k)},${luaQ(v)}}`).join(',') + '}\n' +
  'ALT = {' + [...dalt].flatMap(([n, m]) => [...m].map(([k, v]) => `{${n},${luaQ(k)},${luaQ(v)}}`)).join(',') + '}';
// guide-notes dictionaries (Localization/GuideNotes_ptBR_*.lua): ["English"]="Portugues",
const gtPairs = [];
for (const f of fs.readdirSync(LOC).filter(x => /^GuideNotes_ptBR_.*\.lua$/.test(x))) {
  for (const line of fs.readFileSync(LOC + f, 'utf8').split('\n')) {
    const m = /^\[("(?:[^"\\]|\\.)*")\]=("(?:[^"\\]|\\.)*"),$/.exec(line); if (!m) continue;
    gtPairs.push([unescapeLua(m[1].slice(1, -1)), unescapeLua(m[2].slice(1, -1))]);
  }
}
const gtLua = 'GTP = {' + gtPairs.map(([k, v]) => `{${luaQ(k)},${luaQ(v)}}`).join(',') + '}';
const checkGT = (L, pt) => exec(L, `
  local bad = 0
  for _, p in ipairs(GTP) do if ZGV_GT(p[1]) ~= (${pt} and p[2] or p[1]) then bad = bad + 1 end end
  if ZGV_GT("this text is in no dictionary") ~= "this text is in no dictionary" then bad = bad + 1 end
  return tostring(bad) .. "/" .. tostring(#GTP)`, 'gt');
const checkZGVT = (L, pt) => exec(L, `
  local bad = 0
  for _, p in ipairs(PAIRS) do if ZGV_T(p[1]) ~= (${pt} and p[2] or p[1]) then bad = bad + 1 end end
  for _, a in ipairs(ALT) do if ZGV_T(a[2], a[1]) ~= (${pt} and a[3] or a[2]) then bad = bad + 1 end end
  return tostring(bad) .. "/" .. tostring(#PAIRS + #ALT)`, 'zgvt');

// ---------- what ptBR.lua declares (captured in an isolated state) ----------
function capturePt(file) {
  const L = newState(prelude({ present: false }) + `\nCAP = {}\nfunction ZygorGuidesViewer_L(n, loc, tr) if loc == "ptBR" then CAP[n] = tr() end return CAP[n] end\nfunction ZygorTalentAdvisor_L(n, loc, tr) if loc == "ptBR" then CAP[n] = tr() end return CAP[n] end\n`);
  exec(L, fs.readFileSync(file), file); return L;
}

function scenario(title, o, fn) {
  console.log('\n== ' + title); const L = newState(prelude(o)); loadAll(L, MAIN_FILES); exec(L, pairsLua, 'pairs'); exec(L, gtLua, 'gtpairs'); fn(L);
}

// 1) mini-addon present + ENABLED -> Portuguese
scenario('mini-addon ENABLED -> Portugues', { present: true, enabled: true }, (L) => {
  ok(exec(L, 'return tostring(ZGV_LANG_PT)', 'flag') === 'true', 'ZGV_LANG_PT should be true');
  const r = checkZGVT(L, true); console.log('  ZGV_T mismatches: ' + r); ok(r.startsWith('0/'), 'ZGV_T dictionary mismatch ' + r);
  const g1 = checkGT(L, true); console.log('  ZGV_GT (guide notes) mismatches: ' + g1); ok(g1.startsWith('0/'), 'ZGV_GT mismatch ' + g1);
  const cap = capturePt(LOC + 'ptBR.lua');
  for (const n of ['Main', 'Faction']) {
    const dump = exec(cap, `return DUMP(CAP[${luaQ(n)}])`, 'cap');
    const wantLines = dump.split('\n').filter(Boolean).map(l => { const i = l.indexOf('\t'); return [l.slice(0, i), l.slice(i + 1)]; });
    const check = exec(L, `local got = ENCMAP(ZygorGuidesViewer_L(${luaQ(n)})); local bad, n = 0, 0; local first
      local want = {${wantLines.map(([k, v]) => `[${luaQ(k)}]=${luaQ(v)}`).join(',')}}
      for k, v in pairs(want) do n = n + 1; if got[k] ~= v then bad = bad + 1; first = first or k end end
      return tostring(bad) .. "/" .. tostring(n) .. " " .. tostring(first)`, 'ptcheck');
    console.log('  ' + n + ': ptBR overrides applied - mismatches/total: ' + check); ok(check.startsWith('0/'), n + ' overlay not applied: ' + check);
  }
  const gf = exec(L, 'return ZygorGuidesViewer_L("GuideFolders")["Leveling Guides"]', 'gf'); console.log('  GuideFolders["Leveling Guides"] = ' + gf); ok(gf === 'Guias de Leveling', 'GuideFolders not translated');
  const un = exec(L, 'return ZygorGuidesViewer_L("GuideFolders")["Some Unknown Folder"]', 'gf2'); ok(un === 'Some Unknown Folder', 'unknown folder should fall back to itself');
});

// 2) mini-addon present + DISABLED -> English (must equal upstream)
scenario('mini-addon DISABLED -> English', { present: true, enabled: false }, (L) => {
  ok(exec(L, 'return tostring(ZGV_LANG_PT)', 'flag') === 'false', 'ZGV_LANG_PT should be false');
  const r = checkZGVT(L, false); console.log('  ZGV_T identity mismatches: ' + r); ok(r.startsWith('0/'), 'ZGV_T not identity in English ' + r);
  const g2 = checkGT(L, false); console.log('  ZGV_GT identity mismatches: ' + g2); ok(g2.startsWith('0/'), 'ZGV_GT not identity in English ' + g2);
  for (const n of ['Main', 'Faction', 'Specials', 'G_string']) {
    const d = exec(L, `return DUMP(ZygorGuidesViewer_L(${luaQ(n)}))`, 'dump');
    console.log('  ' + n + ' identical to upstream enUS: ' + (d === base[n])); ok(d === base[n], n + ' differs from upstream in English mode');
  }
  const gf = exec(L, 'return ZygorGuidesViewer_L("GuideFolders")["Leveling Guides"]', 'gf'); ok(gf === 'Leveling Guides', 'GuideFolders should stay English');
});

// 3) mini-addon MISSING -> follows the client (English on enUS, Portuguese on a ptBR client)
scenario('mini-addon MISSING, enUS client -> English', { present: false }, (L) => {
  ok(exec(L, 'return tostring(ZGV_LANG_PT)', 'flag') === 'false', 'missing mini-addon on enUS: English');
  const r = checkZGVT(L, false); ok(r.startsWith('0/'), 'ZGV_T identity ' + r);
});
scenario('mini-addon MISSING, ptBR client -> Portuguese', { present: false, client: 'ptBR' }, (L) => {
  ok(exec(L, 'return tostring(ZGV_LANG_PT)', 'flag') === 'true', 'missing mini-addon on a ptBR client: Portuguese');
  const r = checkZGVT(L, true); ok(r.startsWith('0/'), 'ZGV_T dictionary ' + r);
});

// 4) client locale ptBR but user chose English -> still English
scenario('client GetLocale()=ptBR + English chosen -> English', { present: true, enabled: false, client: 'ptBR' }, (L) => {
  for (const n of ['Main', 'Faction', 'Specials', 'G_string']) {
    const d = exec(L, `return DUMP(ZygorGuidesViewer_L(${luaQ(n)}))`, 'dump'); ok(d === base[n], n + ' should be English');
  }
  console.log('  Main is upstream English: ' + (exec(L, 'return DUMP(ZygorGuidesViewer_L("Main"))', 'd') === base.Main));
});

// 5) TalentAdvisor Base+enUS+ptBR under both settings
for (const en of [true, false]) {
  console.log('\n== TalentAdvisor localization, mini-addon ' + (en ? 'ENABLED (pt)' : 'DISABLED (en)'));
  const L = newState(prelude({ present: true, enabled: en }));
  loadAll(L, [LOC + 'Base.lua']);                                  // defines ZGV_LANG_PT like the real load order
  loadAll(L, TA_FILES.filter(f => /Base|enUS|ptBR/.test(f)));
  const d = exec(L, 'return DUMP(ZygorTalentAdvisor_L("main"))', 'ta');
  const cap = capturePt(TA + 'ptBR.lua'); const ptd = exec(cap, 'return DUMP(CAP["main"])', 'tacap');
  const L2 = newState(prelude({ present: false })); loadAll(L2, [TA + 'Base.lua', TA + 'enUS.lua']); // upstream English (ZGV_LANG_PT nil here)
  const upstream = exec(L2, 'return DUMP(ZygorTalentAdvisor_L("main"))', 'ta0');
  const nkeys = d.split('\n').length;
  if (en) { const want = new Map(ptd.split('\n').map(l => [l.slice(0, l.indexOf('	')), l.slice(l.indexOf('	') + 1)]));
    const got = new Map(d.split('\n').map(l => [l.slice(0, l.indexOf('	')), l.slice(l.indexOf('	') + 1)]));
    let bad = 0; for (const [k, v] of want) if (got.get(k) !== v) bad++;
    console.log('  ptBR overrides applied: ' + bad + ' mismatches / ' + want.size + ' (' + nkeys + ' keys)'); ok(bad === 0, 'TA ptBR overlay not applied'); }
  else { console.log('  identical to upstream English: ' + (d === upstream)); ok(d === upstream, 'TA English differs from upstream'); }
}

console.log('\n' + (fails ? 'RUNTIME TEST FAILED: ' + fails : 'RUNTIME TEST OK'));
process.exit(fails ? 1 : 0);
