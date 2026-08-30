"""Optional exact Lua 5.1 validation using the lupa.lua51 runtime (test-only).

Usage: python test_lua51.py <addon directory> [temporary lupa install directory]
"""
import sys
from pathlib import Path

if len(sys.argv) > 2:
    sys.path.insert(0, str(Path(sys.argv[2]).resolve()))
from lupa.lua51 import LuaRuntime

addon = Path(sys.argv[1]).resolve()
runtime = LuaRuntime(unpack_returned_tuples=True)
assert runtime.eval("_VERSION") == "Lua 5.1"
check = runtime.eval("function(source, name) local fn, err = loadstring(source, name); assert(fn, err) end")
for relative in ("Item-GearFinder.lua", "Options.lua", "Code-WOTLK/Item-GearFinder.lua", "Data-WOTLK/GearFinderCraftedExpanded.lua", "Ver.lua"):
    check((addon / relative).read_text(encoding="utf-8-sig"), relative)
runtime.globals().arg = runtime.table_from({1: addon.as_posix()})
runtime.execute((Path(__file__).parent / "test_crafted.lua").read_text(encoding="utf-8"))
runtime.execute((Path(__file__).parent / "test_open_cache.lua").read_text(encoding="utf-8"))
print("Lua 5.1 syntax and crafted regression suite passed")
