'use strict';
// Flags translated strings that contain MORE "stray" percent signs than the English original.
// A stray % = a % that is not part of a valid printf spec / %% (e.g. "50% de conclusao" -> "% d" would be read as a spec).
const fs = require('fs');
const { ORIG, TR, listStrings } = require('./lua.js');
const spec = /%(?:\d+\$)?[-+#0]*\d*(?:\.\d+)?[sdfxXcgiouqeEG]|%%/g;
const stray = (s) => (s.replace(spec, '').match(/%/g) || []).length;
// a "% " followed by a letter that IS a conversion char (space-flag read as spec by Lua's string.format)
const spaceSpec = (s) => (s.replace(/%%/g, '').match(/% [-+#0]*\d*(?:\.\d+)?[sdfxXcgiouqeEG]/g) || []).length;
function walk(d, b = '') { let r = []; for (const f of fs.readdirSync(d, { withFileTypes: true })) { const p = b ? b + '/' + f.name : f.name; if (f.isDirectory()) r = r.concat(walk(d + '/' + f.name, p)); else r.push(p); } return r; }
const rels = new Set(walk(TR).filter(p => p.endsWith('.txt') && !p.endsWith('.xml.txt')).map(p => p.replace(/(\.\d+)?\.txt$/, '')));
let flagged = 0, total = 0;
for (const rel of rels) {
  if (!/\.lua$/.test(rel)) continue;
  const by = new Map(listStrings(fs.readFileSync(ORIG + '/' + rel, 'utf8')).strings.map(s => [s.id, s]));
  const parts = [TR + '/' + rel + '.txt']; for (let k = 1; k <= 30; k++) parts.push(TR + '/' + rel + '.' + k + '.txt');
  for (const p of parts) {
    if (!fs.existsSync(p)) continue;
    for (const line of fs.readFileSync(p, 'utf8').split(/\r?\n/)) {
      const m = /^(\d+\.\d+) = (.*)$/.exec(line); if (!m) continue;
      const s = by.get(m[1]); if (!s) continue; total++;
      const en = s.body, pt = m[2];
      if (stray(pt) > stray(en) || spaceSpec(pt) > spaceSpec(en)) { flagged++; console.log(rel + ' ' + m[1] + '\n  EN: ' + en.slice(0, 100) + '\n  PT: ' + pt.slice(0, 100)); }
    }
  }
}
console.log('checked ' + total + ' strings, flagged ' + flagged);
