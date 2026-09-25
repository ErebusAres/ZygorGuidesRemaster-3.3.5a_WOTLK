// Parser.lua -- pt-BR for the free text INSIDE guides (notes `.' text`, tips `|tip text`, guide descriptions).
// ZGV_GT(english) returns the Portuguese text from the dictionary (Localization/GuideNotes_ptBR_*.lua) or the same text.
// The lookup key is exactly the text the parser sees (after its own normalisation), so untouched/unknown texts stay English.
// Text goals are translated BEFORE the coordinate search, so "[The Exodar 61.0,89.0]"-style coordinates keep working.
module.exports = [
  {
    // note / text goal (".' text", "'text")
    find: "\t\t\telseif #chunk>1 then -- text\n\t\t\t\t-- snag coordinates for waypointing, with distance\n",
    replace:
      "\t\t\telseif #chunk>1 then -- text\n" +
      "\t\t\t\t-- pt-BR: translate the note (dictionary in Localization/GuideNotes_ptBR_*.lua) before looking for coordinates\n" +
      "\t\t\t\tif cmd==\"'\" then params = ZGV_GT(params) end\n" +
      "\t\t\t\t-- snag coordinates for waypointing, with distance\n",
  },
  {
    // |tip text
    find: "\t\t\telseif cmd==\"tip\" then\n\t\t\t\tif generated_goals and chunkcount>1 then\n",
    replace:
      "\t\t\telseif cmd==\"tip\" then\n" +
      "\t\t\t\tparams = ZGV_GT(params)  -- pt-BR\n" +
      "\t\t\t\tif generated_goals and chunkcount>1 then\n",
  },
  {
    // guide description (tooltip in the guide menu)
    find: "\t\t\t\tguide[cmd]=(guide[cmd] and guide[cmd]..\"\\n\" or \"\") .. params\n",
    replace: "\t\t\t\tguide[cmd]=(guide[cmd] and guide[cmd]..\"\\n\" or \"\") .. ZGV_GT(params)  -- pt-BR\n",
  },
];
