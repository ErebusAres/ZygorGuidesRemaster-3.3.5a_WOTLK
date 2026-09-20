'use strict';
// Independent end-to-end check of the switchable build:
//  1) every ZGV_T("English"[, n]) call in the FINAL files (Lua + XML scripts) has an entry in Localization/ptBR_dict.lua
//     (otherwise that text would stay English in Portuguese mode);
//  2) every dictionary entry is used by at least one call (no dead entries) - reported, not fatal;
//  3) the dictionary file re-parses to exactly the strings the generator intended (quote/escape round trip).
const fs = require('fs');
const { ADDON, tokenize, unescapeLua, listStrings } = require('./lua.js');

function parseDict(text) {
  const main = new Map(), alt = new Map();
  let ctx = null, section = 'main';
  for (const line of text.split('\n')) {
    if (/^\}, \{$/.test(line)) { section = 'alt'; continue; }
    let m = /^\t\[(\d+)\] = \{$/.exec(line); if (m) { ctx = Number(m[1]); alt.set(ctx, new Map()); continue; }
    m = /^\t\t?\["((?:[^"\\]|\\.)*)"\] = "((?:[^"\\]|\\.)*)",$/.exec(line);
    if (!m) continue;
    const k = unescapeLua(m[1]), v = unescapeLua(m[2]);
    if (line.startsWith('\t\t')) alt.get(ctx).set(k, v); else if (section === 'main') main.set(k, v);
  }
  return { main, alt };
}
function walk(d, b = '') { let r = []; for (const f of fs.readdirSync(d, { withFileTypes: true })) { const p = b ? b + '/' + f.name : f.name; if (f.isDirectory()) { if (b === '' && /^(Guides|Libs|i18n-ptBR)$/.test(f.name)) continue; r = r.concat(walk(d + '/' + f.name, p)); } else r.push(p); } return r; }

const dictText = fs.readFileSync(ADDON + '/Localization/ptBR_dict.lua', 'utf8');
const { main, alt } = parseDict(dictText);
console.log('dictionary: ' + main.size + ' main entries, ' + [...alt.values()].reduce((a, m) => a + m.size, 0) + ' context variants');

// pass 1: texts that other modules register themselves with ZGV_T_Register({ ["English"] = "Portugues", ... }) (e.g. AreaGuide.lua)
const registered = new Set();
for (const rel of walk(ADDON)) {
  if (!/\.lua$/.test(rel) || rel === 'Localization/ptBR_dict.lua') continue;
  const src = fs.readFileSync(ADDON + '/' + rel, 'utf8'); const ri = src.indexOf('ZGV_T_Register(');
  if (ri >= 0) for (const m of src.slice(ri).matchAll(/\[("(?:[^"\\]|\\.)*")\]\s*=/g)) registered.add(unescapeLua(m[1].slice(1, -1)));
}
const used = new Set(), usedAlt = new Set();
let calls = 0; const missing = [];
for (const rel of walk(ADDON)) {
  if (!/\.(lua|xml)$/.test(rel) || rel === 'Localization/ptBR_dict.lua') continue;
  const src = fs.readFileSync(ADDON + '/' + rel, 'utf8');
  if (!src.includes('ZGV_T(')) continue;
  if (/\.lua$/.test(rel)) {
    // a module may register its own Portuguese texts:  ZGV_T_Register({ ["English"] = "Portugues", ... })  (e.g. AreaGuide.lua)
    const fileKeys = new Set(); const ri = src.indexOf('ZGV_T_Register(');
    if (ri >= 0) for (const m of src.slice(ri).matchAll(/\[("(?:[^"\\]|\\.)*")\]\s*=/g)) fileKeys.add(unescapeLua(m[1].slice(1, -1)));
    const toks = tokenize(src);
    for (let i = 0; i + 2 < toks.length; i++) {
      if (toks[i].type !== 'code' || !src.slice(toks[i].start, toks[i].end).endsWith('ZGV_T(')) continue;
      const st = toks[i + 1];
      if (st.type !== 'str' && st.type !== 'long') { missing.push(rel + ': ZGV_T( not followed by a string literal'); continue; }
      const body = src.slice(st.bodyStart, st.bodyEnd);
      const en = st.type === 'long' ? body.replace(/^\r?\n/, '') : unescapeLua(body);
      const cl = /^(?:, (\d+))?\)/.exec(src.slice(toks[i + 2].start, toks[i + 2].end));
      if (!cl) { missing.push(rel + ': ZGV_T(...) not closed properly near ' + en.slice(0, 30)); continue; }
      calls++;
      const n = cl[1] ? Number(cl[1]) : null;
      const has = n ? (alt.get(n) && alt.get(n).has(en)) : (main.has(en) || fileKeys.has(en) || registered.has(en));
      if (!has) missing.push(rel + ': no dictionary entry for ' + JSON.stringify(en.slice(0, 60)) + (n ? ' ctx ' + n : '')); else if (n) usedAlt.add(n + '|' + en); else used.add(en);
    }
  } else {
    for (const m of src.matchAll(/ZGV_T\("((?:[^"\\]|\\.)*)"\)/g)) {
      calls++; const en = unescapeLua(m[1]);
      if (!main.has(en)) missing.push(rel + ': no dictionary entry for ' + JSON.stringify(en.slice(0, 60))); else used.add(en);
    }
  }
}
const dead = [...main.keys()].filter(k => !used.has(k));
console.log('ZGV_T calls in final files: ' + calls);
console.log('calls WITHOUT a dictionary entry: ' + missing.length); missing.slice(0, 20).forEach(x => console.log('  ! ' + x));
console.log('dictionary entries never used by any call: ' + dead.length); dead.slice(0, 10).forEach(x => console.log('  ~ ' + JSON.stringify(x.slice(0, 70))));
process.exit(missing.length ? 1 : 0);
