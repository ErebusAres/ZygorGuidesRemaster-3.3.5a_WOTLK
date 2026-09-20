'use strict';
// Minimal Lua 5.1 lexer: splits source into code / comment / string / long-string tokens.
// Concatenating every token's text reproduces the source exactly.

const path = require('path');
// Layout:  <root>/tools (this file)   <root>/tr (translations)   <root>/gsrc   <root>/orig (PRISTINE copy of the upstream addon files: you create it, see README.md)
// The addon folder defaults to <repo>/ZygorGuidesViewerRM (this toolkit lives in <repo>/tools/i18n-ptBR); override with ZGV_ADDON.
const ROOT = process.env.ZGV_PTBR_ROOT || path.resolve(__dirname, '..');
const defaultAddon = () => {
  const candidates = [path.resolve(ROOT, '../../ZygorGuidesViewerRM'), path.resolve(ROOT, '..')];
  return candidates.find((p) => require('fs').existsSync(path.join(p, 'ZygorGuidesViewerRM.toc'))) || candidates[0];
};
const ADDON = (process.env.ZGV_ADDON || defaultAddon()).replace(/\\/g, '/');
const ORIG = (process.env.ZGV_ORIG || path.join(ROOT, 'orig')).replace(/\\/g, '/');
const TR = path.join(ROOT, 'tr').replace(/\\/g, '/');

function tokenize(src) {
  const toks = [];
  const n = src.length;
  let i = 0, codeStart = 0;
  const flushCode = (end) => { if (end > codeStart) toks.push({ type: 'code', start: codeStart, end }); };
  while (i < n) {
    const c = src[i];
    if (c === '-' && src[i + 1] === '-') {
      flushCode(i);
      const m = /^\[(=*)\[/.exec(src.slice(i + 2, i + 60));
      let end;
      if (m) {
        const close = ']' + m[1] + ']';
        const e = src.indexOf(close, i + 2 + m[0].length);
        end = e < 0 ? n : e + close.length;
      } else {
        end = src.indexOf('\n', i);
        if (end < 0) end = n;
      }
      toks.push({ type: 'comment', start: i, end });
      i = end; codeStart = i;
    } else if (c === '"' || c === "'") {
      flushCode(i);
      let j = i + 1;
      for (;;) {
        if (j >= n) throw new Error('unterminated string at offset ' + i);
        const d = src[j];
        if (d === '\\') {
          if (src[j + 1] === '\r' && src[j + 2] === '\n') j += 3; else j += 2;
          continue;
        }
        if (d === c) break;
        if (d === '\n') throw new Error('newline in string at offset ' + i);
        j++;
      }
      toks.push({ type: 'str', q: c, start: i, end: j + 1, bodyStart: i + 1, bodyEnd: j });
      i = j + 1; codeStart = i;
    } else if (c === '[') {
      const m = /^\[(=*)\[/.exec(src.slice(i, i + 60));
      if (m) {
        flushCode(i);
        const close = ']' + m[1] + ']';
        const e = src.indexOf(close, i + m[0].length);
        if (e < 0) throw new Error('unterminated long string at offset ' + i);
        toks.push({ type: 'long', start: i, end: e + close.length, bodyStart: i + m[0].length, bodyEnd: e });
        i = e + close.length; codeStart = i;
      } else i++;
    } else i++;
  }
  flushCode(n);
  return toks;
}

function lineIndex(src) {
  const starts = [0];
  for (let i = 0; i < src.length; i++) if (src[i] === '\n') starts.push(i + 1);
  return starts;
}
function lineOf(starts, pos) {
  let lo = 0, hi = starts.length - 1;
  while (lo < hi) { const mid = (lo + hi + 1) >> 1; if (starts[mid] <= pos) lo = mid; else hi = mid - 1; }
  return lo + 1;
}

// All string tokens with stable ids "<line>.<ordinal-on-that-line>".
function listStrings(src) {
  const toks = tokenize(src);
  const starts = lineIndex(src);
  const perLine = {};
  const out = [];
  for (const t of toks) {
    if (t.type !== 'str' && t.type !== 'long') continue;
    const line = lineOf(starts, t.start);
    perLine[line] = (perLine[line] || 0) + 1;
    out.push(Object.assign({}, t, { line, ord: perLine[line], id: line + '.' + perLine[line], body: src.slice(t.bodyStart, t.bodyEnd) }));
  }
  return { toks, strings: out, starts };
}

// Source with every string body blanked: used to prove only string contents changed.
function mask(src) {
  const toks = tokenize(src);
  let out = '';
  for (const t of toks) {
    if (t.type === 'str' || t.type === 'long') out += src.slice(t.start, t.bodyStart) + src.slice(t.bodyEnd, t.end);
    else out += src.slice(t.start, t.end);
  }
  return out;
}

// Tokens that must survive translation unchanged (format specifiers, WoW escapes, Lua escapes).
function placeholders(s) {
  const found = [];
  const res = [
    /%(?:\d+\$)?[-+#0]*\d*(?:\.\d+)?[sdfxXcgiouqeEG]/g, // printf-style (no space flag: "50% completo" is not a spec)
    /%%/g,
    /\|c[0-9a-fA-F]{8}/g, /\|r/g,                       // colors
    /\|T[^|]*\|t/g, /\|H[^|]*\|h/g, /\|h/g,             // textures / hyperlinks
    /\|n/g,                                             // WoW newline
    /\\n/g, /\\t/g, /\\r/g, /\\\\/g, /\\"/g, /\\'/g,      // Lua escapes
    /\\\d{1,3}/g,                                       // decimal byte escapes
    /\$[a-zA-Z_][a-zA-Z0-9_]*/g,                        // $var style placeholders
    /\{[a-zA-Z_][a-zA-Z0-9_]*\}/g,                      // {name} placeholders
    /<[a-zA-Z][^>]*>/g,                                 // tags like <name>
  ];
  for (const re of res) { const m = s.match(re); if (m) for (const x of m) found.push(x); }
  return found.sort();
}

// A short-string body is valid if no unescaped quote / raw newline and doesn't end with a lone backslash.
function validShortBody(body, q) {
  let i = 0;
  while (i < body.length) {
    const c = body[i];
    if (c === '\\') { i += 2; if (i > body.length) return 'ends with lone backslash'; continue; }
    if (c === q) return 'unescaped ' + q;
    if (c === '\n' || c === '\r') return 'raw newline';
    i++;
  }
  return null;
}

// Runtime value of the body of a Lua short string (escapes resolved). Throws on non-ASCII byte escapes (\ddd >= 128).
function unescapeLua(body) {
  let out = '';
  for (let i = 0; i < body.length; i++) {
    const c = body[i];
    if (c !== '\\') { out += c; continue; }
    const d = body[++i];
    if (d === undefined) break;
    if (d === 'n') out += '\n'; else if (d === 't') out += '\t'; else if (d === 'r') out += '\r';
    else if (d === 'a') out += '\x07'; else if (d === 'b') out += '\b'; else if (d === 'f') out += '\f'; else if (d === 'v') out += '\v';
    else if (/[0-9]/.test(d)) {
      let n = d; while (n.length < 3 && /[0-9]/.test(body[i + 1] || '')) n += body[++i];
      const v = parseInt(n, 10);
      if (v >= 128) throw new Error('byte escape >=128 not supported: \\' + n);
      out += String.fromCharCode(v);
    }
    else if (d === '\n') out += '\n';
    else out += d;
  }
  return out;
}
// Lua double-quoted literal for an arbitrary runtime string (UTF-8 text stays as-is).
function luaQuote(s) {
  let o = '"';
  for (const ch of s) {
    const c = ch.codePointAt(0);
    if (ch === '\\') o += '\\\\';
    else if (ch === '"') o += '\\"';
    else if (ch === '\n') o += '\\n';
    else if (ch === '\r') o += '\\r';
    else if (ch === '\t') o += '\\t';
    else if (c < 32) o += '\\' + String(c).padStart(3, '0');
    else o += ch;
  }
  return o + '"';
}

// XML translation files: lines "ORIGINAL ==> TRANSLATED". kind 'attr' = XML attribute (text="..."): cannot call a function;
// kind 'call' = Lua call inside an XML script, e.g. SetText("..."): can be wrapped with ZGV_T().
function xmlPairs(text) {
  const out = [];
  text.split(/\r?\n/).forEach((raw) => {
    if (!raw.trim() || raw.startsWith('#')) return;
    const k = raw.indexOf(' ==> ');
    if (k < 0) return;
    const from = raw.slice(0, k), to = raw.slice(k + 5).replace(/␣/g, ' ');
    const kind = /^[A-Za-z_]+="/.test(from) ? 'attr' : 'call';
    const q = /"((?:[^"\\]|\\.)*)"/;
    const a = q.exec(from), b = q.exec(to);
    out.push({ from, to, kind, enRaw: a ? a[1] : null, ptRaw: b ? b[1] : null });
  });
  return out;
}

// ---- write guard --------------------------------------------------------------------------------------------------
// The generators rebuild files from the pristine copy (orig/) + tr/, so a plain write would silently destroy anything
// somebody edited in the addon folder afterwards. tr/_generated.json remembers the sha1 of what the tools wrote last;
// guardedWrite() refuses to overwrite a file whose content is neither that nor the expected new output.
//   force: overwrite anyway (--force)   seed: only record the expected output (--seed-manifest), write nothing
const _fs = require('fs'), _crypto = require('crypto');
const _sha1 = (s) => _crypto.createHash('sha1').update(s, 'utf8').digest('hex');
let _man = null, _dirty = false;
const _manFile = () => TR + '/_generated.json';
function _manifest() { if (!_man) { try { _man = JSON.parse(_fs.readFileSync(_manFile(), 'utf8')); } catch (e) { _man = {}; } } return _man; }
function guardedWrite(rel, content, opts) {
  const { dry, force, seed } = opts || {};
  const man = _manifest(), target = ADDON + '/' + rel, h = _sha1(content);
  if (seed) { man[rel] = h; _dirty = true; return 'seeded'; }
  const cur = _fs.existsSync(target) ? _sha1(_fs.readFileSync(target, 'utf8')) : null;
  if (cur === h) { if (man[rel] !== h) { man[rel] = h; _dirty = true; } return 'unchanged'; }
  if (cur !== null && !force) {
    const op = ORIG + '/' + rel, pristine = _fs.existsSync(op) ? _sha1(_fs.readFileSync(op, 'utf8')) : null;
    const known = man[rel] === undefined ? pristine : man[rel];       // what the file should look like if nobody touched it
    if (cur !== known) return 'blocked';
  }
  if (dry) return 'dry';
  _fs.mkdirSync(require('path').dirname(target), { recursive: true }); _fs.writeFileSync(target, content, 'utf8');
  man[rel] = h; _dirty = true; return 'written';
}
function flushManifest(dry) { if (_dirty && !dry) { _fs.writeFileSync(_manFile(), JSON.stringify(_manifest(), null, 1) + '\n', 'utf8'); _dirty = false; } }

module.exports = { ORIG, ADDON, TR, tokenize, listStrings, lineIndex, lineOf, mask, placeholders, validShortBody, unescapeLua, luaQuote, xmlPairs, guardedWrite, flushManifest };
