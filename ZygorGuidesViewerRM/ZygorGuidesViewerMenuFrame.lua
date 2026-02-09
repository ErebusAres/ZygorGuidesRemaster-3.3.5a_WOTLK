--ZYGORGUIDESVIEWERFRAME_TITLE = "Zygor Guides Viewer";
ZYGORGUIDESVIEWERFRAME_TITLE = " ";

local ZGV = ZygorGuidesViewer

function ZygorGuidesViewerFrame_OnLoad()
end

function ZygorGuidesViewerFrame_OnHide()
	ZGV:Frame_OnHide();
end

function ZygorGuidesViewerFrame_OnLoad()
	--
end

function ZygorGuidesViewerFrame_OnShow()
	ZGV:Frame_OnShow();
end

function ZygorGuidesViewerFrame_Update()
	if ZGV then ZGV:UpdateMainFrame() end
end

function ZGVFSectionDropDown_Initialize()
	if ZygorGuidesViewer then ZygorGuidesViewer:InitializeDropDown() end
end

function ZGVFSectionDropDown_Func()
	if ZygorGuidesViewer then ZygorGuidesViewer:SectionChange(this.value) end
--	ToggleDropDownMenu(1, nil, ZygorGuidesViewerFrame_SectionDropDown, ZygorGuidesViewerFrame, 0, 0);
end

function ZygorGuidesViewerFrame_HighlightCurrentStep()
	if ZygorGuidesViewer.CurrentStep then ZygorGuidesViewer:HighlightCurrentStep() end
end