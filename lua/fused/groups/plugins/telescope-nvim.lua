local M = {}

M.get_hl_groups = function(cp)
	return {
		TelescopeNormal = { bg = cp.bg },
		TelescopeSelection = { bg = cp.popup_bg },
		TelescopeSelectionCaret = { fg = cp.base09 },
		TelescopeMultiSelection = { fg = cp.base04 },
		TelescopeMatching = { fg = cp.base15 },
		TelescopePromptPrefix = { fg = cp.base09 },
		TelescopeBorder = { fg = cp.base04 },
		TelescopePromptBorder = { link = "TelescopeBorder" },
		TelescopeResultsBorder = { link = "TelescopeBorder" },
		TelescopePreviewBorder = { link = "TelescopeBorder" },
		TelescopeTitle = { fg = cp.base11, bold = true },
		TelescopePromptTitle = { fg = cp.base09, bold = true },
		TelescopeResultsTitle = { fg = cp.base14, bold = true },
		TelescopePreviewTitle = { fg = cp.base11, bold = true },
	}
end
return M
