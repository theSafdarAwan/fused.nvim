local function get_hl_groups(cp)
	return {
		NotifyLogTitle = { fg = cp.base06 },
		NotifyLogTime = { fg = cp.base08 },

		NotifyINFOTitle = { fg = cp.base15, bold = true },
		NotifyINFOBody = { bg = cp.base02 },
		NotifyINFOIcon = { link = "NotifyINFOTitle" },
		NotifyINFOBorder = { link = "NotifyINFOTitle" },

		NotifyWARNTitle = { fg = cp.base09 },
		NotifyWARNBody = { bg = cp.base02 },
		NotifyWARNIcon = { link = "NotifyWARNTitle" },
		NotifyWARNBorder = { link = "NotifyWARNTitle" },

		NotifyDEBUGTitle = { fg = cp.base17 },
		NotifyDEBUGBody = { bg = cp.base02 },
		NotifyDEBUGIcon = { link = "NotifyDEBUGTitle" },
		NotifyDEBUGBorder = { link = "NotifyDEBUGTitle" },

		NotifyERRORTitle = { fg = cp.base11 },
		NotifyERRORBody = { bg = cp.base02 },
		NotifyERRORIcon = { link = "NotifyERRORTitle" },
		NotifyERRORBorder = { link = "NotifyERRORTitle" },

		NotifyTRACETitle = { fg = cp.base10 },
		NotifyTRACEBody = { bg = cp.base02 },
		NotifyTRACEIcon = { link = "NotifyTRACETitle" },
		NotifyTRACEBorder = { link = "NotifyTRACETitle" },
	}
end

return { get_hl_groups = get_hl_groups }
