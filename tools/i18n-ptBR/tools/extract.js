'use strict';
// Usage: node extract.js <relpath> [--all] [--dev] [--from N] [--to M] [--max N]
// Prints source lines that contain candidate UI strings. Each candidate is prefixed with #<ordinal>,
// so its id is "<line>.<ordinal>" (stable for the pristine file).
const fs = require('fs');
const { ORIG, listStrings } = require('./lua.js');

const args = process.argv.slice(2);
const rel = args.find(a => !a.startsWith('--') && !/^\d+$/.test(a));
const flag = (n) => args.includes('--' + n);
const opt = (n, d) => { const i = args.indexOf('--' + n); return i >= 0 ? parseInt(args[i + 1], 10) : d; };
if (!rel) { console.error('usage: node extract.js <relpath> [--all] [--dev] [--from N] [--to M]'); process.exit(1); }

const src = fs.readFileSync(ORIG + '/' + rel, 'utf8');
const lines = src.split('\n');
const { strings } = listStrings(src);

const STRIP = /\|c[0-9a-fA-F]{8}|\|r|\|T[^|]*\|t|\|H[^|]*\|h|\|h|\|n|%(?:\d+\$)?[-+ #0]*\d*(?:\.\d+)?[sdfxXcgiouq%]|\\[nrt"'\\]/g;
const UI_CTX = /(SetText|AddLine|AddDoubleLine|SetTitle|SetLabel|SetTooltip|SetFormattedText|Print|Echo|Msg|Message|message|Popup|Notify|Tooltip|tooltip|Tip|text|label|title|name|desc|header|caption|hint|msg|button|heading|description|note|prompt|status|info|errtext|errmsg)\s*[\(=,:]?\s*$/i;
const DEV_CTX = /\b(Debug|debug|Dbg|dbg|DebugF|Log|LogSuccess|LogError|error|assert|print_r|Trace)\s*\(|ZGV\.?:?Debug|\.Debug\(/;
const KEY_CTX = /\bLT?\s*[\[\(]\s*$|\bL\s*\.\s*$/;

function classify(s, lineText) {
  const b = s.body;
  if (s.type === 'long') return /[A-Za-z]{3}/.test(b) ? 'LONG' : null;
  const t = b.replace(STRIP, ' ');
  if (!/[A-Za-z\u00C0-\u024F]{2}/.test(t)) return null;
  if (/^[A-Za-z]:\\|Interface\\|\.(blp|tga|ttf|lua|xml|ogg|mp3|wav|toc|png|jpg)$/i.test(b)) return null;
  const before = lineText.slice(0, Math.max(0, s.start - s.lineStart)).slice(-60);
  if (KEY_CTX.test(before)) return null;
  if (flag('values') && !/=\s*$/.test(before)) return null;   // only table values ("key" = "value")
  const ui = UI_CTX.test(before);
  const isDev = DEV_CTX.test(lineText);
  if (isDev && !flag('dev')) return 'DEV';
  if (flag('all')) return ui ? 'U' : 'P';
  const hasSpace = /\s/.test(t.trim());
  if (!hasSpace) {
    const tt = t.trim();
    if (/^[a-z_][a-z0-9_.\-:]*$/.test(tt)) return ui && tt.length > 3 ? 'w' : null;   // lowercase identifier
    if (/^[A-Z][A-Z0-9_]+$/.test(tt)) return ui ? 'w' : null;                        // CONSTANT
    if (/^[a-z]+[A-Z][A-Za-z0-9]*$/.test(tt)) return null;                          // camelCase
    if (/^[A-Z][a-z]{2,}$/.test(tt)) return ui ? 'W' : 'w';                           // Capitalized word
    if (/^[A-Z][A-Za-z'-]{2,}[.!:?,;]*$/.test(tt)) return ui ? 'W' : 'w';   // Word with punctuation / hyphen
    return ui ? 'w' : null;
  }
  return ui ? 'U' : 'P';
}

const from = opt('from', 1), to = opt('to', Infinity), max = opt('max', Infinity);
const byLine = new Map();
let shown = 0, dev = 0, skippedLowW = 0;
for (const s of strings) {
  if (s.line < from || s.line > to) continue;
  const lineStart = src.lastIndexOf('\n', s.start - 1) + 1;
  const lineText = lines[s.line - 1];
  s.lineStart = lineStart;
  const cls = classify(s, lineText);
  if (!cls) continue;
  if (cls === 'DEV') { dev++; continue; }
  if (flag('low')) { if (cls !== 'w') continue; }
  else if (cls === 'w' && !flag('all')) { skippedLowW++; continue; }
  if (!byLine.has(s.line)) byLine.set(s.line, []);
  byLine.get(s.line).push({ s, cls });
  shown++;
}

let out = [];
for (const [ln, items] of byLine) {
  if (out.length >= max) break;
  const text = lines[ln - 1];
  let rendered;
  if (text.length <= 260) {
    rendered = '';
    let pos = 0;
    const lineStart = items[0].s.lineStart;
    // mark every candidate with #ord before its opening delimiter
    for (const { s } of items) {
      const off = s.start - lineStart;
      rendered += text.slice(pos, off) + '#' + s.ord;
      pos = off;
    }
    rendered += text.slice(pos);
  } else {
    const lineStart = items[0].s.lineStart;
    rendered = items.map(({ s }) => {
      const off = s.start - lineStart, end = s.end - lineStart;
      return '…' + text.slice(Math.max(0, off - 45), off) + '#' + s.ord + text.slice(off, Math.min(text.length, end + 30)) + '…';
    }).join(' ');
  }
  const tags = items.map(i => i.cls).join('');
  out.push(ln + ': ' + rendered.trim() + (tags.replace(/[UP]/g, '') ? '   [' + tags.replace(/[UP]/g, '') + ']' : ''));
}
console.log('== ' + rel + '  lines-with-candidates=' + byLine.size + '  strings=' + shown + '  hiddenDev=' + dev + '  hiddenLowWord=' + skippedLowW);
console.log(out.join('\n'));
