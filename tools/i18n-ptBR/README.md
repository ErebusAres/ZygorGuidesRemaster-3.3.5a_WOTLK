# i18n-ptBR: tooling behind the Portuguese (pt-BR) translation

This folder is **not loaded by the game** and nothing in `ZygorGuidesViewerRM/` depends on it. It holds the sources and the
Node.js tools that generate the pt-BR files of the addon, so that the translation stays reproducible and can be re-applied when
the upstream code changes. The generated files are ordinary source files; you are free to edit them by hand and ignore this folder.

Requirements: Node.js 18+ (no dependencies for the generators; `fengari` and `luaparse` for the tests).

## Layout

| Path | What it is |
|---|---|
| `tools/` | The generators and checkers (see below). `lua.js` is the shared Lua 5.1 tokenizer plus the write guard. |
| `tr/` | The translations. `tr/<file>.txt` = one `line.ordinal = Portuguese text` per string of that Lua file; `tr/*.xml.txt` = exact `ORIGINAL ==> TRANSLATED` pairs for XML; `tr/*.patch.js` = small code patches (language selector, guide-folder labels, parser hook, Profiles tab); `tr/guides/<group>/*.txt` = guide notes (`id = Portuguese`, `id = @` keeps English). |
| `gsrc/` | Frozen English sources of the guide notes/tips, `<group>.tsv` = `id<TAB>English`, extracted exactly as `Parser.lua` sees them. |
| `tests/` | Structural and runtime checks (Lua VM based). |
| `orig/` | **Not committed.** A pristine copy of the upstream addon files the translation was generated from (you create it, see Setup). |

## Setup

```bash
cd tools/i18n-ptBR
mkdir orig
# only the Lua/XML/toc sources (~40 MB, LF line endings, which the tools require):
git -C ../.. archive fe2fd29 ':(glob)ZygorGuidesViewerRM/**/*.lua' ':(glob)ZygorGuidesViewerRM/**/*.xml' ':(glob)ZygorGuidesViewerRM/**/*.toc' \
  | tar -x -C orig --strip-components=1
(cd tests && npm install)
```

`fe2fd29` is the upstream commit (revision 246) the translation was generated from. The addon folder to write into defaults to
`../../ZygorGuidesViewerRM`; override with `ZGV_ADDON=<dir>`, and the pristine copy with `ZGV_ORIG=<dir>`.

## What is generated and what is written by hand

| Generated (do not edit, edit `tr/` instead) | By |
|---|---|
| `Localization/ptBR.lua`, `ZygorTalentAdvisor/Localization/ptBR.lua` (standard locale tables) | `apply.js` |
| `Localization/ptBR_dict.lua` and the ~40 Lua/XML files whose English literals are wrapped as `ZGV_T("English")` | `apply.js`, `applyxml.js` |
| `Localization/GuideNotes_ptBR_*.lua` and the `GUIDENOTES:BEGIN/END` block of `Localization/load.xml` | `gnotes.js build` |

Written by hand, never touched by the tools: `Localization/Base.lua` (language flag, `ZGV_T`, `ZGV_GT`), `Localization/GuideFolders_ptBR.lua`,
`ZygorTalentAdvisor/Localization/Base.lua`, `ZygorGuidesViewerRM_PTBR/*.toc`, and the rest of the two `load.xml` files.

## Everyday workflows

**Interface strings**
```bash
node tools/extract.js Options.lua --all        # candidate strings, each with its id  <line>.<ordinal>
# add "id = Portuguese text" lines to tr/Options.lua.txt   (keep %s, %d, |n and |c...|r identical to the English text)
node tools/apply.js Options.lua                # or:  node tools/apply.js --all
node tools/verify.js && node tools/stray.js && node tools/dictcheck.js
```
XML files: `node tools/applyxml.js ZygorGuidesViewerFrame.xml` (and `ZygorTalentAdvisor/Popout.xml`, `ZygorTalentAdvisor/Bindings.xml`).

**Guide notes and tips**
```bash
node tools/gnotes.js stats                     # translated / pending per group
node tools/gnotes.js next inc 300              # next 300 pending texts as "id = English"
# write tr/guides/inc/NNN.txt with "id = Portuguese"
node tools/grules.js && node tools/gnotes.js build   # sentence templates + validate + write the dictionaries
node tools/gnotes.js kept inc                  # review what was kept in English
```
The dictionary key is the exact text the parser sees, so a text without an entry simply stays in English.

**After upstream changes**: refresh `orig/` from the new commit, then run `node tools/apply.js --all`. Every translated id is checked
against a hash of its original text (`tr/_anchors.json`), so a shifted line number can never silently translate the wrong string; it is reported instead.

## Checks

```bash
cd tests               # check.js needs orig/ (see Setup); the others only read the addon folder
node check.js      # every generated Lua file parses (luaparse, Lua 5.1); nothing that parsed in the original broke
node runtime.js    # loads the Localization files in a Lua VM: mini-addon enabled / disabled / missing, enUS and ptBR clients
node keycheck.js   # guide-note keys vs the parser's own normalisation, for every guide body
node coverage.js   # how much of the guide text is translated
```
The VM used by the tests is fengari (Lua 5.3), the game runs Lua 5.1, so they exercise the plain code of the loader only. None of this replaces testing in the game client.

## Write guard

The generators rebuild files from `orig/` + `tr/`, so a plain write would destroy anything edited in the addon folder afterwards.
`tr/_generated.json` (not committed) remembers what the tools wrote last; a file that differs from it is reported as **BLOCKED** and left alone.
`--force` overwrites anyway; `--seed-manifest` only records the current expected output.

## Reproducibility check (done when this folder was added)

All 50 generated files of the pull request were deleted from a copy of the tree and rebuilt with
`node tools/apply.js --all`, `node tools/applyxml.js <file>` (three XML files) and `node tools/gnotes.js build`.
The rebuilt tree was compared file by file with the committed one: 802 files compared, 0 differences.

## Licence

Same as the addon (`X-License: GPL` in its `.toc`). The English texts in `gsrc/` are the note/tip lines of the guides that are already in `ZygorGuidesViewerRM/Guides/`.
