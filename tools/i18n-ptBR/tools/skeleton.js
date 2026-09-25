'use strict';
// Structural check of the GENERATED locale files: their code skeleton (strings blanked) must equal the English original's.
const fs = require('fs');
const { ORIG, ADDON, mask } = require('./lua.js');
const norm = (s) => s.replace(/\s+$/, '').replace(/\r/g, '');
let failures = 0;

// ---- main ptBR.lua vs enUS.lua
let en = fs.readFileSync(ORIG + '/Localization/enUS.lua', 'utf8');
en = en.slice(0, en.indexOf('local plurals = {'));
en = en.replace(/ZygorGuidesViewer_L\("Main", "enUS"/, 'ZygorGuidesViewer_L("Main", "ptBR"')
  .replace(/ZygorGuidesViewer_L\("Faction", "enUS"/, 'ZygorGuidesViewer_L("Faction", "ptBR"')
  .replace(/^-- These are the main viewer's lines\./m, '-- Brazilian Portuguese (ptBR) translation of the main viewer lines.');
let ptFull = fs.readFileSync(ADDON + '/Localization/ptBR.lua', 'utf8');
const a = ptFull.indexOf('\n\t-- Keys used by the code');
const b = ptFull.indexOf('\n} end)', a);
const ptNoExtras = ptFull.slice(0, a) + ptFull.slice(b);
const sameMain = norm(mask(en)) === norm(mask(ptNoExtras));
console.log('Localization/ptBR.lua skeleton == enUS.lua skeleton:', sameMain);
if (!sameMain) {
  failures++;
  const x = norm(mask(en)).split('\n'), y = norm(mask(ptNoExtras)).split('\n');
  for (let i = 0; i < Math.max(x.length, y.length); i++) if (x[i] !== y[i]) { console.log(' first diff at line ' + (i + 1) + '\n  EN: ' + x[i] + '\n  PT: ' + y[i]); break; }
}
const extras = ptFull.slice(a, b);
const lineOk = /^\t\["[A-Za-z0-9_]+"\] = "(?:[^"\\]|\\.)*",$/;
const badExtra = extras.split('\n').filter(l => l.trim() && !/^\s*--/.test(l) && !lineOk.test(l));
console.log('extras block malformed lines:', badExtra.length ? badExtra : 'none');
if (badExtra.length) failures++;

// ---- Talent Advisor ptBR.lua vs enUS.lua
const enT = fs.readFileSync(ORIG + '/ZygorTalentAdvisor/Localization/enUS.lua', 'utf8').replace(/ZygorTalentAdvisor_L\("main", "enUS"/, 'ZygorTalentAdvisor_L("main", "ptBR"');
const ptT = fs.readFileSync(ADDON + '/ZygorTalentAdvisor/Localization/ptBR.lua', 'utf8');
const sameTA = norm(mask(enT)) === norm(mask(ptT));
console.log('TalentAdvisor ptBR.lua skeleton == enUS.lua skeleton:', sameTA);
if (!sameTA) failures++;

// ---- GuideFolders_ptBR.lua strict per-line structure
const gf = fs.readFileSync(ADDON + '/Localization/GuideFolders_ptBR.lua', 'utf8').split('\n');
let inTable = false; const bad = [];
gf.forEach((l, i) => {
  if (/ZygorGuidesViewer_L\("GuideFolders", "ptBR"/.test(l)) { inTable = true; return; }
  if (inTable && /^\} end\)$/.test(l)) { inTable = false; return; }
  if (!inTable) return;
  if (!l.trim() || /^\s*--/.test(l)) return;
  if (!/^\t\["(?:[^"\\]|\\.)+"\] = "(?:[^"\\]|\\.)*",$/.test(l)) bad.push((i + 1) + ': ' + l);
});
console.log('GuideFolders table malformed lines:', bad.length ? bad : 'none');
if (bad.length) failures++;

// duplicate keys inside ptBR.lua Main (a duplicate would silently override) - report only new duplicates vs enUS
function keysOf(s) { const m = [...s.matchAll(/\[\s*["']([^"']+)["']\s*\]\s*=/g)].map(x => x[1]); const c = {}; m.forEach(k => c[k] = (c[k] || 0) + 1); return Object.keys(c).filter(k => c[k] > 1); }
const dupEn = new Set(keysOf(en)), dupPt = keysOf(ptNoExtras + extras).filter(k => !dupEn.has(k));
console.log('duplicate keys introduced in ptBR.lua:', dupPt.length ? dupPt : 'none');
process.exit(failures ? 1 : 0);
