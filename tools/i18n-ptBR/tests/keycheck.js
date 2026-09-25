'use strict';
// Key-fidelity test: the dictionary keys are produced by tools/gextract.js (JavaScript). The parser (Lua) must see the SAME
// strings. Here the ParseEntry line/chunk normalisation is copied verbatim into a Lua VM and both results are compared for
// every Alliance guide / include body.
const { lua, lauxlib, lualib, to_luastring, to_jsstring } = require('fengari');
const { extractBody, loadedFiles, readFile } = require('../tools/gextract.js');

const LUA = String.raw`
function EXTRACT(text)
  local out = {}
  text = text .. "\n"
  local index = 1
  local strfind = string.find
  while (index<#text) do
    local st,en,line=strfind(text,"%s*(.-)%s*\n",index)
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
        if prev:match("[%w]") or nextc:match("[%w]") then
          return "_" .. inner .. "_"
        end
        return inner
      end)
    end
    line = line .. "|"
    for chunk in line:gmatch("%s*(.-)%s*|+") do
      chunk = chunk:gsub("^'%s*","' ")
      chunk = chunk:gsub("^@(%S)","@ %1")
      local cmd,params = chunk:match("([^%s]*)%s?(.*)")
      if cmd and cmd~="" then
        cmd = cmd:lower()
        cmd = cmd:gsub("^%.+","")
      end
      if cmd=="'" then
        if #chunk>1 then out[#out+1] = "'\t"..params end
      elseif cmd=="tip" then
        if params ~= "" then out[#out+1] = "tip\t"..params end
      elseif cmd=="description" then
        if params ~= "" then out[#out+1] = "description\t"..params end
      end
    end
  end
  return table.concat(out,"\n")
end
`;
const L = lauxlib.luaL_newstate(); lualib.luaL_openlibs(L);
if (lauxlib.luaL_dostring(L, to_luastring(LUA)) !== 0) throw new Error(to_jsstring(lua.lua_tostring(L, -1)));

function luaExtract(body) {
  lua.lua_getglobal(L, to_luastring('EXTRACT')); lua.lua_pushstring(L, to_luastring(body));
  if (lua.lua_pcall(L, 1, 1, 0) !== 0) throw new Error(to_jsstring(lua.lua_tostring(L, -1)));
  const s = to_jsstring(lua.lua_tostring(L, -1)); lua.lua_pop(L, 1); return s;
}

const isAllianceFile = (rel) => /Alliance|\/A-|QuestInstancesA\b|InstancesA\.|Achievements\/Ares|AresAchievement/i.test(rel) || /\/A_/.test(rel);
let bodies = 0, lines = 0, bad = 0;
for (const rel of [...new Set(loadedFiles())]) {
  let items; try { items = readFile(rel); } catch (e) { continue; }
  for (const g of items) {
    if (!(isAllianceFile(rel) || g.faction === 'alliance' || /Alliance/i.test(g.title))) continue;
    bodies++;
    const js = extractBody(g.body).filter((e) => e.kind === "'" || e.kind === 'tip' || e.kind === 'description').map((e) => e.kind + '\t' + e.text).join('\n');
    const lu = luaExtract(g.body);
    lines += js ? js.split('\n').length : 0;
    if (js !== lu) {
      bad++;
      if (bad <= 5) {
        const a = js.split('\n'), b = lu.split('\n'); let i = 0; while (i < a.length && a[i] === b[i]) i++;
        console.log('MISMATCH in ' + rel + ' :: ' + g.title + '\n  JS : ' + JSON.stringify(a[i]) + '\n  LUA: ' + JSON.stringify(b[i]));
      }
    }
  }
}
console.log('bodies compared: ' + bodies + ', extracted lines: ' + lines + ', bodies with a difference: ' + bad);
process.exit(bad ? 1 : 0);
