local function load_hl(cp)
	return {
		NotifyLogTitle = { fg = cp.white },
		NotifyLogTime = { fg = cp.err_sev },

		NotifyINFOTitle = { fg = cp.search, bold = true },
		NotifyINFOBody = { fg = cp.white },
		NotifyINFOIcon = { link = "NotifyINFOTitle" },
		NotifyINFOBorder = { link = "NotifyINFOTitle" },

		NotifyWARNTitle = { fg = cp.warn },
		NotifyWARNBody = { fg = cp.white },
		NotifyWARNIcon = { link = "NotifyWARNTitle" },
		NotifyWARNBorder = { link = "NotifyWARNTitle" },

		NotifyDEBUGTitle = { fg = cp.variable },
		NotifyDEBUGBody = { fg = cp.white },
		NotifyDEBUGIcon = { link = "NotifyDEBUGTitle" },
		NotifyDEBUGBorder = { link = "NotifyDEBUGTitle" },

		NotifyERRORTitle = { fg = cp.err },
		NotifyERRORBody = { fg = cp.white },
		NotifyERRORIcon = { link = "NotifyERRORTitle" },
		NotifyERRORBorder = { link = "NotifyERRORTitle" },

		NotifyTRACETitle = { fg = cp.blue },
		NotifyTRACEBody = { fg = cp.white },
		NotifyTRACEIcon = { link = "NotifyTRACETitle" },
		NotifyTRACEBorder = { link = "NotifyTRACETitle" },
	}
end

return { load_hl = load_hl }
