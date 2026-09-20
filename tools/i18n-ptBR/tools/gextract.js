'use strict';
// Extracts the translatable free text of guide bodies EXACTLY the way Parser.lua sees it (ParseEntry normalisation).
//   kinds:  "'"   text goal          ( .' text   /  'text )      -> params of the "'" chunk
//           "tip" tooltip            ( |tip text )                -> params of the "tip" chunk
//           "description" / "title"  header / step title lines
//           "text" bare text chunk (unknown command) - counted separately, NOT translated
const fs = require('fs');
const { tokenize, ADDON } = require('./lua.js');

const GUIDES = ADDON + '/Guides';

// commands handled by Parser.lua (anything else in first position of a chunk is a "bare text" chunk)
const KNOWN = new Set(('leechsteps defaultfor next author type expansion faction realm subcategory sortindex description startlevel label keywords class spec opt meta sugGroup grouprole region template travelcfg travelfor override ' +
  'step level title map @ accept turnin talk goto at gotoontaxi gotonpc direct path loop route multigoto kill get collect goldcollect goal buy from complete ding equipped hearth rep achieve skill skillmax learn fpath home havebuff nobuff invehicle outvehicle ontaxi offtaxi click clicknpc condition info trash walk cast petaction use script only until autoscript confirm n c noway localmap sticky stickyif stickystart stickystop future noobsolete daily tip image quest q or optional required important icon buttonicon mapicon execute macro updatescript condition_visible condition_valid condition_suggested notravel ' +
  'condition_valid_msg condition_invalid condition_end condition_suggested_race debug notinsticky nowayinzone autoacceptany autoturninany noautoaccept noautogossip nohearth nomodels nomovieskip noordinal blizztooltip usebank usename mounts pets pet model modelnpc modeldisplay indoors outdoors completion achieveid blockstart blockend more shared_origin getquestonmap showtext instant killcount include').split(/\s+/));

// Lua-side: line:gsub("()_([^_]+)_()", ...) italic markers
function stripItalics(source) {
  return source.replace(/_([^_]+)_/g, (m, inner, off) => {
    const prev = off > 0 ? source[off - 1] : '';
    const nextc = off + m.length < source.length ? source[off + m.length] : '';
    if (/\w/.test(prev) && /[A-Za-z0-9]/.test(prev) || /[A-Za-z0-9]/.test(nextc)) return '_' + inner + '_';
    return inner;
  });
}

// one guide/include body -> [{kind, text, line}]
function extractBody(body) {
  const out = [];
  const lines = (body + '\n').split('\n');
  let n = 0;
  for (let raw of lines) {
    n++;
    let line = raw.replace(/^\s+/, '').replace(/\s+$/, '');
    line = line.replace(/\/\/.*$/, '');
    if (/^--/.test(line)) line = '';
    line = line.replace(/^\.*/, '');
    line = line.replace(/^\* */, '');
    line = stripItalics(line);
    if (!line) continue;
    line += '|';
    const re = /\s*(.*?)\s*\|+/g; let m; let chunkcount = 0;
    while ((m = re.exec(line))) {
      chunkcount++;
      let chunk = m[1];
      if (m[0].length === 0) { re.lastIndex++; continue; }
      chunk = chunk.replace(/^'\s*/, "' ").replace(/^@(\S)/, '@ $1');
      const mm = /^([^\s]*)\s?([\s\S]*)$/.exec(chunk); if (!mm) continue;
      let cmd = mm[1], params = mm[2];
      if (cmd) cmd = cmd.toLowerCase().replace(/^\.+/, '');
      if (!cmd) continue;
      if (cmd === "'") { if (chunk.length > 1) out.push({ kind: "'", text: params, line: n }); }
      else if (cmd === 'tip') { if (params) out.push({ kind: 'tip', text: params, line: n }); }
      else if (cmd === 'description') { if (params) out.push({ kind: 'description', text: params, line: n }); }
      else if (cmd === 'title') { if (params) out.push({ kind: 'title', text: params, line: n }); }
      else if (cmd === 'goal') { if (params) out.push({ kind: 'goal', text: params, line: n }); }   // objective text: reported only, never translated
      else if (!KNOWN.has(cmd) && chunk.length > 1) out.push({ kind: 'text', text: chunk, line: n });
    }
  }
  return out;
}

// Autoload order -> list of files (relative to Guides/)
function loadedFiles() {
  const x = fs.readFileSync(GUIDES + '/Autoload.xml', 'utf8').replace(/<!--[\s\S]*?-->/g, '');
  return [...x.matchAll(/<Script file="([^"]+)"/g)].map(m => m[1].replace(/\\/g, '/'));
}

// all guides/includes of a file: [{type:'guide'|'include', title, header:{faction}, body, file}]
function readFile(rel) {
  const src = fs.readFileSync(GUIDES + '/' + rel, 'utf8').replace(/\r\n/g, '\n');
  const toks = tokenize(src).filter(t => t.type !== 'comment');
  const res = [];
  for (let i = 0; i < toks.length; i++) {
    const t = toks[i];
    if (t.type !== 'code') continue;
    const code = src.slice(t.start, t.end);
    const mg = /RegisterGuide\(\s*$/.exec(code), mi = /RegisterInclude\(\s*$/.exec(code);
    if (!mg && !mi) continue;
    const a = toks[i + 1];
    if (!a || (a.type !== 'str' && a.type !== 'long')) continue;
    const title = src.slice(a.bodyStart, a.bodyEnd);
    // the body is the first long string after the title (retail format: title, {table...}, [[steps]])
    let body = null, hdr = '';
    for (let j = i + 2; j < Math.min(toks.length, i + 400); j++) {
      const u = toks[j];
      if (u.type === 'long') { body = src.slice(u.bodyStart, u.bodyEnd).replace(/^\n/, ''); break; }
      if (u.type === 'code' && /RegisterGuide|RegisterInclude/.test(src.slice(u.start, u.end))) break;
      if (u.type === 'str' && j === i + 2) { /* include given as "..." string */ }
    }
    if (body == null) continue;
    const fm = /^\s*faction\s+(\w+)/mi.exec(body); // header faction
    res.push({ type: mg ? 'guide' : 'include', title, faction: fm ? fm[1].toLowerCase() : '', body, file: rel });
  }
  return res;
}

module.exports = { GUIDES, extractBody, loadedFiles, readFile, KNOWN };
