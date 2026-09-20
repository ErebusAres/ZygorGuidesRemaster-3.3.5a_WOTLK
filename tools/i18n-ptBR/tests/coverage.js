'use strict';
// END-TO-END coverage of the guide-notes dictionary, as the game would see it:
//   real ParseEntry line/chunk normalisation (Lua)  ->  ZGV_GT()  ->  translated or not, per guide file.
// Loads Localization/Base.lua + Localization/GuideNotes_ptBR_*.lua in a Lua VM with the language switch ON.
const fs = require('fs');
const { lua, lauxlib, lualib, to_luastring, to_jsstring } = require('fengari');
const { ADDON } = require('../tools/lua.js');
const { loadedFiles, readFile } = require('../tools/gextract.js');

const LOC = ADDON + '/Localization/';
const L = lauxlib.luaL_newstate(); lualib.luaL_openlibs(L);
function run(src, name) {
  const buf = Buffer.from(src, 'utf8'); const bytes = new Uint8Array(buf.buffer, buf.byteOffset, buf.length);
  if (lauxlib.luaL_loadbuffer(L, bytes, bytes.length, to_luastring('=' + name)) !== 0 || lua.lua_pcall(L, 0, 1, 0) !== 0) throw new Error(name + ': ' + to_jsstring(lua.lua_tostring(L, -1)));
  const r = lua.lua_type(L, -1) === lua.LUA_TSTRING ? to_jsstring(lua.lua_tostring(L, -1)) : null; lua.lua_pop(L, 1); return r;
}
run(`function GetLocale() return "enUS" end\nfunction GetAddOnInfo(n) return n, "t", "n", true, true, "" end`, 'prelude');
run(fs.readFileSync(LOC + 'Base.lua', 'utf8'), 'Base.lua');
const xml = fs.readFileSync(LOC + 'load.xml', 'utf8').replace(/<!--[\s\S]*?-->/g, '');
for (const m of xml.matchAll(/<Script file="(GuideNotes_ptBR_[^"]+)"/g)) run(fs.readFileSync(LOC + m[1], 'utf8'), m[1]);

run(String.raw`
function COVER(text)
  local total, tr, untr = 0, 0, {}
  text = text .. "\n"
  local index = 1
  while (index<#text) do
    local st,en,line=string.find(text,"%s*(.-)%s*\n",index)
    if not en then break end
    index = en + 1
    line = line:gsub("//.*$","")
    if line:match("^%-%-") then line="" end
    local indent
    indent,line = line:match("^(%.*)(.*)")
    line = line:gsub("^%* *","")
    do
      local source = line
      line = source:gsub("()_([^_]+)_()", function(openPos, inner, closePos)
        local prev = openPos > 1 and source:sub(openPos - 1, openPos - 1) or ""
        local nextc = closePos <= #source and source:sub(closePos, closePos) or ""
        if prev:match("[%w]") or nextc:match("[%w]") then return "_" .. inner .. "_" end
        return inner
      end)
    end
    line = line .. "|"
    for chunk in line:gmatch("%s*(.-)%s*|+") do
      chunk = chunk:gsub("^'%s*","' ")
      chunk = chunk:gsub("^@(%S)","@ %1")
      local cmd,params = chunk:match("([^%s]*)%s?(.*)")
      if cmd and cmd~="" then cmd = cmd:lower(); cmd = cmd:gsub("^%.+","") end
      local t
      if cmd=="'" then if #chunk>1 then t = params end
      elseif cmd=="tip" or cmd=="description" then if params ~= "" then t = params end end
      if t then
        total = total + 1
        if ZGV_GT(t) ~= t then tr = tr + 1 elseif #untr < (UNTR_CAP or 3) then untr[#untr+1] = t end
      end
    end
  end
  return total .. "\t" .. tr .. "\t" .. table.concat(untr, "\t")
end`, 'cover');

function cover(body) {
  lua.lua_getglobal(L, to_luastring('COVER')); lua.lua_pushstring(L, to_luastring(body));
  if (lua.lua_pcall(L, 1, 1, 0) !== 0) throw new Error(to_jsstring(lua.lua_tostring(L, -1)));
  const s = to_jsstring(lua.lua_tostring(L, -1)); lua.lua_pop(L, 1);
  const [t, r, ...ex] = s.split('\t'); return { total: Number(t), tr: Number(r), ex };
}

if (process.argv[3] === '--list') run('UNTR_CAP = 100000', 'cap');
const rows = []; let T = 0, R = 0;
for (const rel of [...new Set(loadedFiles())]) {
  let items; try { items = readFile(rel); } catch (e) { continue; }
  let total = 0, tr = 0; const ex = [];
  for (const g of items) { const c = cover(g.body); total += c.total; tr += c.tr; if (process.argv[3] === '--list') ex.push(...c.ex); else if (ex.length < 2) ex.push(...c.ex.slice(0, 2 - ex.length)); }
  if (!total) continue; rows.push({ rel, total, tr, ex }); T += total; R += tr;
}
const only = process.argv[2];
console.log('file'.padEnd(64) + 'note/tip lines'.padStart(15) + 'translated'.padStart(12) + '   %');
for (const r of rows.sort((a, b) => b.total - a.total)) {
  if (only && !new RegExp(only, 'i').test(r.rel)) continue;
  console.log(r.rel.slice(0, 63).padEnd(64) + String(r.total).padStart(15) + String(r.tr).padStart(12) + String(Math.round(100 * r.tr / r.total)).padStart(5) + '%');
}
console.log('\nALL loaded guide files: ' + R + ' of ' + T + ' note/tip lines translated (' + Math.round(100 * R / T) + '%)');
if (only) for (const r of rows.filter((x) => new RegExp(only, 'i').test(x.rel))) if (r.ex.length) console.log(process.argv[3] === '--list' ? [...new Set(r.ex)].map((x) => '  ~ ' + x).join('\n') : '  untranslated e.g. [' + r.rel.split('/').pop() + '] ' + r.ex.join(' || ').slice(0, 300));
