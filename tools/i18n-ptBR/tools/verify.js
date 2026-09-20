'use strict';
// Verifies every file that differs from the pristine snapshot (plus new files):
//  - Lua: strings tokenize; brackets ( ) { } [ ] balanced; block keywords balanced (same as original file);
//  - XML: tag stack balanced; - all: valid UTF-8, no BOM, LF only, no U+FFFD.
const fs = require('fs');
const path = require('path');
const { ORIG, ADDON, tokenize, mask } = require('./lua.js');

function walk(dir, base = '') {
  let res = [];
  for (const f of fs.readdirSync(dir, { withFileTypes: true })) {
    const p = base ? base + '/' + f.name : f.name;
    if (f.isDirectory()) { if (!base && f.name === 'i18n-ptBR') continue; res = res.concat(walk(dir + '/' + f.name, p)); }
    else res.push(p);
  }
  return res;
}

function codeOnly(src) {
  const toks = tokenize(src);
  let out = '';
  for (const t of toks) if (t.type === 'code') out += src.slice(t.start, t.end); else out += ' ';
  return out;
}
function metrics(src) {
  const code = codeOnly(src);
  const cnt = (re) => (code.match(re) || []).length;
  const b = { '(': cnt(/\(/g) - cnt(/\)/g), '{': cnt(/\{/g) - cnt(/\}/g), '[': cnt(/\[/g) - cnt(/\]/g) };
  const words = code.match(/\b(function|if|elseif|then|for|while|do|repeat|until|end)\b/g) || [];
  const c = {}; for (const w of words) c[w] = (c[w] || 0) + 1;
  const opens = (c['function'] || 0) + (c['if'] || 0) + (c['for'] || 0) + (c['while'] || 0) + (c['repeat'] || 0) + ((c['do'] || 0) - (c['for'] || 0) - (c['while'] || 0));
  const closes = (c['end'] || 0) + (c['until'] || 0);
  return { brackets: b, blocks: opens - closes, thenIf: (c['then'] || 0) - (c['if'] || 0) - (c['elseif'] || 0) };
}
function xmlBalanced(src) {
  const s = src.replace(/<!--[\s\S]*?-->/g, '').replace(/<!\[CDATA\[[\s\S]*?\]\]>/g, '');
  const stack = [];
  for (const m of s.matchAll(/<(\/?)([A-Za-z_][\w:.-]*)([^>]*?)(\/?)>/g)) {
    const [, close, name, , self] = m;
    if (self) continue;
    if (close) { if (stack.pop() !== name) return 'mismatch at </' + name + '>'; } else stack.push(name);
  }
  return stack.length ? 'unclosed <' + stack[stack.length - 1] + '>' : null;
}

let files = walk(ADDON).filter(f => /\.(lua|xml|toc)$/i.test(f));
const changed = [];
for (const rel of files) {
  const a = fs.readFileSync(ADDON + '/' + rel);
  const oPath = ORIG + '/' + rel;
  if (fs.existsSync(oPath) && Buffer.compare(a, fs.readFileSync(oPath)) === 0) continue;
  changed.push(rel);
}
let bad = 0;
const report = [];
for (const rel of changed) {
  const buf = fs.readFileSync(ADDON + '/' + rel);
  const problems = [];
  if (buf[0] === 0xEF && buf[1] === 0xBB && buf[2] === 0xBF) problems.push('has BOM');
  let text;
  try { text = new TextDecoder('utf-8', { fatal: true }).decode(buf); } catch (e) { problems.push('invalid UTF-8'); text = buf.toString('latin1'); }
  if (text.includes('�')) problems.push('contains U+FFFD');
  if (text.includes('\r')) problems.push('contains CR (expected LF only)');
  const nonAscii = (text.match(/[^\x00-\x7F]/g) || []).length;
  if (/\.lua$/i.test(rel)) {
    try {
      const m = metrics(text);
      const oPath = ORIG + '/' + rel;
      if (fs.existsSync(oPath)) {
        const mo = metrics(fs.readFileSync(oPath, 'utf8'));
        for (const k of ['(', '{', '[']) if (m.brackets[k] !== mo.brackets[k]) problems.push('bracket balance ' + k + ' changed ' + mo.brackets[k] + ' -> ' + m.brackets[k]);
        if (m.blocks !== mo.blocks) problems.push('block balance changed ' + mo.blocks + ' -> ' + m.blocks);
        if (m.thenIf !== mo.thenIf) problems.push('then/if balance changed');
      } else {
        for (const k of ['(', '{', '[']) if (m.brackets[k] !== 0) problems.push('new file: bracket ' + k + ' unbalanced ' + m.brackets[k]);
        if (m.blocks !== 0) problems.push('new file: blocks unbalanced ' + m.blocks);
      }
    } catch (e) { problems.push('tokenize: ' + e.message); }
  } else if (/\.xml$/i.test(rel)) {
    const x = xmlBalanced(text); if (x) problems.push('xml: ' + x);
  }
  if (problems.length) bad++;
  report.push((problems.length ? 'FAIL ' : 'ok   ') + rel.padEnd(58) + ' non-ASCII chars: ' + String(nonAscii).padStart(6) + (problems.length ? '   <- ' + problems.join('; ') : ''));
}
console.log(report.join('\n'));
console.log('\nchanged/new files: ' + changed.length + '   failing: ' + bad);
process.exit(bad ? 1 : 0);
