local function load_hl(cp)
	return {
		NotifyLogTitle = { fg = cp.base04 },
		NotifyLogTime = { fg = cp.base06 },

		NotifyINFOTitle = { fg = cp.base13, styles = "bold" },
		NotifyINFOBody = { bg = cp.popup_bg },
		NotifyINFOIcon = { link = "NotifyINFOTitle" },
		NotifyINFOBorder = { link = "NotifyINFOTitle" },

		NotifyWARNTitle = { fg = cp.base07 },
		NotifyWARNBody = { bg = cp.popup_bg },
		NotifyWARNIcon = { link = "NotifyWARNTitle" },
		NotifyWARNBorder = { link = "NotifyWARNTitle" },

		NotifyDEBUGTitle = { fg = cp.base15 },
		NotifyDEBUGBody = { bg = cp.popup_bg },
		NotifyDEBUGIcon = { link = "NotifyDEBUGTitle" },
		NotifyDEBUGBorder = { link = "NotifyDEBUGTitle" },

		NotifyERRORTitle = { fg = cp.base09 },
		NotifyERRORBody = { bg = cp.popup_bg },
		NotifyERRORIcon = { link = "NotifyERRORTitle" },
		NotifyERRORBorder = { link = "NotifyERRORTitle" },

		NotifyTRACETitle = { fg = cp.base08 },
		NotifyTRACEBody = { bg = cp.popup_bg },
		NotifyTRACEIcon = { link = "NotifyTRACETitle" },
		NotifyTRACEBorder = { link = "NotifyTRACETitle" },
	}
end

return { load_hl = load_hl }
