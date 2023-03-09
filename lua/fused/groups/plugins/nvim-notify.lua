local function get_hl_groups(cp)
	return {
		NotifyLogTitle = { fg = cp.base06 },
		NotifyLogTime = { fg = cp.err_sev },

		NotifyINFOTitle = { fg = cp.search, bold = true },
		NotifyINFOBody = { fg = cp.base06 },
		NotifyINFOIcon = { link = "NotifyINFOTitle" },
		NotifyINFOBorder = { link = "NotifyINFOTitle" },

		NotifyWARNTitle = { fg = cp.warn },
		NotifyWARNBody = { fg = cp.base06 },
		NotifyWARNIcon = { link = "NotifyWARNTitle" },
		NotifyWARNBorder = { link = "NotifyWARNTitle" },

		NotifyDEBUGTitle = { fg = cp.variable },
		NotifyDEBUGBody = { fg = cp.base06 },
		NotifyDEBUGIcon = { link = "NotifyDEBUGTitle" },
		NotifyDEBUGBorder = { link = "NotifyDEBUGTitle" },

		NotifyERRORTitle = { fg = cp.err },
		NotifyERRORBody = { fg = cp.base06 },
		NotifyERRORIcon = { link = "NotifyERRORTitle" },
		NotifyERRORBorder = { link = "NotifyERRORTitle" },

		NotifyTRACETitle = { fg = cp.blue },
		NotifyTRACEBody = { fg = cp.base06 },
		NotifyTRACEIcon = { link = "NotifyTRACETitle" },
		NotifyTRACEBorder = { link = "NotifyTRACETitle" },
	}
end

return { get_hl_groups = get_hl_groups }
