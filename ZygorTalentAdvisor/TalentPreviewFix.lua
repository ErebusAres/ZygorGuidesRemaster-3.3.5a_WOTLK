--- Fix the bug when it becomes possible to remove previewed talents from former tiers, while there are talents in latter tiers.

function IsTalentRemovable(tab,talent,pet,group)
	local _,_,mytier,_,realrank,_,_,_,prevrank = GetTalentInfo(tab,talent,false,pet,group)
	local currenttalent=talent

	if prevrank==realrank then return false end

	local tiertalents={}
	for tier=1,MAX_NUM_TALENT_TIERS do tiertalents[tier]={} end
	for talent=1,MAX_NUM_TALENTS do
		local name,_,tier = GetTalentInfo(tab,talent,false,pet,group)
		if name and tier then table.insert(tiertalents[tier],talent) end
	end

	for maxtier=mytier,MAX_NUM_TALENT_TIERS do
		local pointsintiers=0
		for tier=1,maxtier do
			for t,talent in ipairs(tiertalents[tier]) do
				local prevrank = select(9,GetTalentInfo(tab,talent,false,pet,group))
				if talent==currenttalent then prevrank = prevrank - 1 end
				pointsintiers = pointsintiers + prevrank
			end
		end

		local lasttiers=0
		for tier=maxtier+1,MAX_NUM_TALENT_TIERS do
			for t,talent in ipairs(tiertalents[tier]) do
				local prevrank = select(9,GetTalentInfo(tab,talent,false,pet,group))
				if prevrank>0 then lasttiers=1 break end
			end
		end

		if lasttiers>0 and pointsintiers<(maxtier)*5 then
			return false
		end
	end

	return true
end

Old_AddPreviewTalentPoints = AddPreviewTalentPoints
function AddPreviewTalentPoints(tab,talent,delta,pet,group)
	if delta>0 or IsTalentRemovable(tab,talent,pet,group) then
		Old_AddPreviewTalentPoints(tab,talent, delta, pet,group);
	end
end
