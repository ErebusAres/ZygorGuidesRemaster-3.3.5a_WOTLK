local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("AGear") then return end
ZGV.CommonGear=true
if not ZygorGuidesViewer.ItemScore then return end
ZygorGuidesViewer.ItemScore.Items = {}
