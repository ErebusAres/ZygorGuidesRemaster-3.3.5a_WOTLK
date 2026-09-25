'use strict';
// Generates tr/_anchors.json: for every translated id, a short hash of the ORIGINAL (English) string body.
// apply.js verifies it, so re-applying the translation onto a newer upstream version can never silently
// translate the wrong string when line numbers shift.
const fs = require('fs');
const crypto = require('crypto');
const { ORIG, TR, listStrings } = require('./lua.js');
const h = (s) => crypto.createHash('sha1').update(s, 'utf8').digest('hex').slice(0, 10);

function walk(d, b = '') {
  let r = [];
  for (const f of fs.readdirSync(d, { withFileTypes: true })) {
    const p = b ? b + '/' + f.name : f.name;
    if (f.isDirectory()) r = r.concat(walk(d + '/' + f.name, p)); else r.push(p);
  }
  return r;
}
const rels = new Set(walk(TR).filter(p => p.endsWith('.txt') && !p.endsWith('.xml.txt')).map(p => p.replace(/(\.\d+)?\.txt$/, '')));
const out = {};
let n = 0;
for (const rel of [...rels].sort()) {
  if (!/\.lua$/.test(rel)) continue;
  const src = fs.readFileSync(ORIG + '/' + rel, 'utf8');
  const by = new Map(listStrings(src).strings.map(s => [s.id, s]));
  out[rel] = {};
  const parts = [TR + '/' + rel + '.txt']; for (let k = 1; k <= 30; k++) parts.push(TR + '/' + rel + '.' + k + '.txt');
  for (const p of parts) {
    if (!fs.existsSync(p)) continue;
    for (const line of fs.readFileSync(p, 'utf8').split(/\r?\n/)) {
      const m = /^(\d+\.\d+) = /.exec(line); if (!m) continue;
      const s = by.get(m[1]); if (!s) continue;
      out[rel][m[1]] = h(s.body); n++;
    }
  }
}
fs.writeFileSync(TR + '/_anchors.json', JSON.stringify(out, null, 0));
console.log('anchors written for ' + n + ' translated strings in ' + Object.keys(out).length + ' files');
