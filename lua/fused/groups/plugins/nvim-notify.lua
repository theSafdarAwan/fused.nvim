local function get_hl_groups(cp)
	return {
		NotifyLogTitle = { fg = cp.base06 },
		NotifyLogTime = { fg = cp.base08 },

		NotifyINFOTitle = { fg = cp.base15, bold = true },
		NotifyINFOBody = { fg = cp.base06 },
		NotifyINFOIcon = { link = "NotifyINFOTitle" },
		NotifyINFOBorder = { link = "NotifyINFOTitle" },

		NotifyWARNTitle = { fg = cp.base09 },
		NotifyWARNBody = { fg = cp.base06 },
		NotifyWARNIcon = { link = "NotifyWARNTitle" },
		NotifyWARNBorder = { link = "NotifyWARNTitle" },

		NotifyDEBUGTitle = { fg = cp.base17 },
		NotifyDEBUGBody = { fg = cp.base06 },
		NotifyDEBUGIcon = { link = "NotifyDEBUGTitle" },
		NotifyDEBUGBorder = { link = "NotifyDEBUGTitle" },

		NotifyERRORTitle = { fg = cp.base11 },
		NotifyERRORBody = { fg = cp.base06 },
		NotifyERRORIcon = { link = "NotifyERRORTitle" },
		NotifyERRORBorder = { link = "NotifyERRORTitle" },

		NotifyTRACETitle = { fg = cp.base10 },
		NotifyTRACEBody = { fg = cp.base06 },
		NotifyTRACEIcon = { link = "NotifyTRACETitle" },
		NotifyTRACEBorder = { link = "NotifyTRACETitle" },
	}
end

return { get_hl_groups = get_hl_groups }
