
local myname, ns = ...


local function SetValue(self, index)
	if not index then return self:SetText() end

	local _, _, _, _, _, req_level = GetAuctionItemInfo("list", index)
	self:SetText(req_level ~= 1 and req_level)
end


function ns.CreateAuctionReqLevel(parent)
	local seller = parent:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	seller.SetValue = SetValue
	return seller
end
