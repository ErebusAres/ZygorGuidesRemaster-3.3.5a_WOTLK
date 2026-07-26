local ZGV = ZygorGuidesViewer
if ZGV then
    ZGV.QuestDB = ZGV.QuestDB or {}

    function ZGV.QuestDB:GetQuestName(questID)
        if not questID then
            return nil
        end

        if type(questID) == "table" then
            questID = questID[1] or questID[2]
        end

        local QuestDB = ZygorGuidesViewer_L("QuestDB")

        if not QuestDB then
            -- Entry fallback enUS
            local enUS = ZygorGuidesViewer_L_enUS("QuestDB")
            return enUS and enUS[questID] or nil
        end

        local title = rawget(QuestDB, questID)

        if title ~= nil then
            return title
        end

        -- Full fallback enUS
        local enUS = ZygorGuidesViewer_L_enUS("QuestDB")
        return enUS and enUS[questID] or nil
    end
end