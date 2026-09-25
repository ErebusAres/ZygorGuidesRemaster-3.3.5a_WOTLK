'use strict';
// Real Lua 5.1 SYNTAX check (luaparse) of every generated Lua file, compared with the pristine original.
// A file that parses in the original but not in the generated copy = the ZGV_T wrapping broke something.
const fs = require('fs'), path = require('path');
const luaparse = require('luaparse');
const { ADDON, ORIG } = require('../tools/lua.js');

function walk(d, b = '') { let r = []; for (const f of fs.readdirSync(d, { withFileTypes: true })) { const p = b ? b + '/' + f.name : f.name; if (f.isDirectory()) { if (b === '' && /^(Guides|Libs|i18n-ptBR)$/.test(f.name)) continue; r = r.concat(walk(d + '/' + f.name, p)); } else r.push(p); } return r; }
const parse = (src) => { try { luaparse.parse(src, { luaVersion: '5.1', comments: false, scope: false, locations: false }); return null; } catch (e) { return e.message; } };

let n = 0, bad = 0, baseline = 0, newFiles = 0;
for (const rel of walk(ADDON).filter(r => /\.lua$/.test(r)).sort()) {
  const src = fs.readFileSync(ADDON + '/' + rel, 'utf8').replace(/^﻿/, '');
  const err = parse(src);
  n++;
  if (!err) continue;
  const op = ORIG + '/' + rel;
  if (fs.existsSync(op)) {
    const oerr = parse(fs.readFileSync(op, 'utf8').replace(/^﻿/, ''));
    if (oerr) { baseline++; console.log('baseline (fails in original too, parser limitation): ' + rel + ' :: ' + oerr.slice(0, 80)); continue; }
  } else newFiles++;
  bad++; console.log('BROKEN: ' + rel + ' :: ' + err.slice(0, 200));
}
console.log('\nparsed ' + n + ' Lua files; broken by the build: ' + bad + '; baseline-only failures: ' + baseline + '; new-file failures counted in broken: ' + newFiles);
process.exit(bad ? 1 : 0);
