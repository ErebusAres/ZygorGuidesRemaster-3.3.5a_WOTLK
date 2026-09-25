'use strict';
// Usage: node applyxml.js <relpath.xml> [--mode gettext|inplace] [--dry]
// Reads tr/<relpath>.xml.txt : one exact substring replacement per line   ORIGINAL ==> TRANSLATED   ('#' comments).
//  gettext (default): Lua calls inside XML scripts, e.g.  SetText("English")  become  SetText(ZGV_T("English")); the Portuguese text
//                     lives in Localization/ptBR_dict.lua.  XML *attributes* (text="...") cannot call a function and stay in English.
//  inplace          : every pair is applied literally (fixed Portuguese).
// Every ORIGINAL must exist; the number of '<' and '>' must be identical before/after (no tag can change).
const fs = require('fs');
const path = require('path');
const { ORIG, ADDON, TR, xmlPairs, guardedWrite, flushManifest } = require('./lua.js');

const args = process.argv.slice(2);
const dry = args.includes('--dry');
const FORCE = args.includes('--force'), SEED = args.includes('--seed-manifest');   // see guardedWrite() in lua.js
const mi = args.indexOf('--mode');
const MODE = mi >= 0 ? args[mi + 1] : 'gettext';
const rel = args.filter((a, i) => !a.startsWith('--') && args[i - 1] !== '--mode')[0];
const trPath = TR + '/' + rel + '.xml.txt';
if (!fs.existsSync(trPath)) { console.log('no translation file for ' + rel); process.exit(0); }

const src = fs.readFileSync(ORIG + '/' + rel, 'utf8');
let out = src;
const errors = [];
let n = 0, kept = 0;
for (const pr of xmlPairs(fs.readFileSync(trPath, 'utf8'))) {
  if (MODE === 'gettext') {
    if (pr.kind === 'attr') { kept++; continue; }
    if (pr.enRaw === null || pr.ptRaw === null) { errors.push('call pair without a quoted string: ' + pr.from.slice(0, 60)); continue; }
    const wrapped = pr.from.replace('"' + pr.enRaw + '"', 'ZGV_T("' + pr.enRaw + '")');
    const cnt = out.split(pr.from).length - 1;
    if (cnt === 0) { errors.push('original not found: ' + pr.from.slice(0, 70)); continue; }
    out = out.split(pr.from).join(wrapped); n += cnt;
  } else {
    if (/[<>&]/.test(pr.to) && !/[<>&]/.test(pr.from)) { errors.push('replacement contains < > &'); continue; }
    const cnt = out.split(pr.from).length - 1;
    if (cnt === 0) { errors.push('original not found: ' + pr.from.slice(0, 70)); continue; }
    out = out.split(pr.from).join(pr.to); n += cnt;
  }
}
const count = (s, ch) => s.split(ch).length - 1;
if (count(out, '<') !== count(src, '<') || count(out, '>') !== count(src, '>')) errors.push('tag count changed!');
if (errors.length) { console.log('  ' + rel + ': ' + errors.length + ' ERROR(S) - not written'); errors.forEach(e => console.log('    ! ' + e)); process.exit(1); }
const wr = guardedWrite(rel, out, { dry, force: FORCE, seed: SEED });
flushManifest(dry);
console.log('  ' + rel + ': ' + n + ' replacement(s) applied' + (kept ? ', ' + kept + ' attribute text(s) kept in English' : '') + (dry ? ' [dry]' : '') + (wr === 'blocked' ? '   ** BLOCKED: edited outside the tools, NOT overwritten (see README) **' : ''));
