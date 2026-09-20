'use strict';
// What is NOT covered by the guide-notes dictionary: numbers for the README.
//   node gremain.js
const { extractBody, loadedFiles, readFile } = require('./gextract.js');
const isAllianceFile = (rel) => /Alliance|\/A-|QuestInstancesA\b|InstancesA\.|Achievements\/Ares|AresAchievement/i.test(rel) || /\/A_/.test(rel);
const A = { note: new Map(), text: new Map(), goal: new Map(), title: new Map(), desc: new Map() };
const other = new Map();   // note/tip texts of Horde / common guides
let alliLines = { text: 0, goal: 0, title: 0 };
for (const rel of [...new Set(loadedFiles())]) {
  let items; try { items = readFile(rel); } catch (e) { continue; }
  for (const g of items) {
    const isA = isAllianceFile(rel) || g.faction === 'alliance' || /Alliance/i.test(g.title);
    for (const e of extractBody(g.body)) {
      if (!isA) { if (e.kind === "'" || e.kind === 'tip' || e.kind === 'description') other.set(e.text, (other.get(e.text) || 0) + 1); continue; }
      const m = e.kind === 'text' ? A.text : e.kind === 'goal' ? A.goal : e.kind === 'title' ? A.title : e.kind === 'description' ? A.desc : A.note;
      m.set(e.text, (m.get(e.text) || 0) + 1);
      if (alliLines[e.kind] !== undefined) alliLines[e.kind]++;
    }
  }
}
const lead = new Map(); for (const t of A.text.keys()) { const w = t.split(/\s+/)[0].toLowerCase(); lead.set(w, (lead.get(w) || 0) + 1); }
const top = [...lead].sort((a, b) => b[1] - a[1]).slice(0, 14).map((x) => x[0] + ' ' + x[1]).join(', ');
let onlyOther = 0; for (const t of other.keys()) if (!A.note.has(t)) onlyOther++;
console.log('Alliance bare-text lines (unknown command, shown as text): ' + alliLines.text + ' lines, ' + A.text.size + ' unique.  most common first words: ' + top);
console.log('Alliance |goal objective texts: ' + alliLines.goal + ' lines, ' + A.goal.size + ' unique');
console.log('Alliance step titles (title): ' + alliLines.title + ' lines, ' + A.title.size + ' unique');
console.log('Horde/common note+tip texts: ' + other.size + ' unique, of which NOT in the Alliance set: ' + onlyOther);
