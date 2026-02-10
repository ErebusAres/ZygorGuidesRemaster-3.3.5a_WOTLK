local ZygorGuidesViewer=ZygorGuidesViewer
local ZGV=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV.DoMutex and ZGV:DoMutex("HGear") then return end
ZGV.CommonGear=true
if not ZygorGuidesViewer.ItemScore then return end
ZygorGuidesViewer.ItemScore.Items = {}
