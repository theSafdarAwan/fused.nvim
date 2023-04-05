local M = {}

M.get_hl_groups = function(cp)
	return {
		TelescopeNormal = { bg = cp.bg },
		TelescopeSelection = { bg = cp.popup_bg },
		TelescopeSelectionCaret = { fg = cp.base07 },
		TelescopeMultiSelection = { fg = cp.base02 },
		TelescopeMatching = { fg = cp.base13 },
		TelescopePromptPrefix = { fg = cp.base07 },
		TelescopeBorder = { fg = cp.base02 },
		TelescopePromptBorder = { link = "TelescopeBorder" },
		TelescopeResultsBorder = { link = "TelescopeBorder" },
		TelescopePreviewBorder = { link = "TelescopeBorder" },
		TelescopeTitle = { fg = cp.base09, bold = true },
		TelescopePromptTitle = { fg = cp.base07, bold = true },
		TelescopeResultsTitle = { fg = cp.base12, bold = true },
		TelescopePreviewTitle = { fg = cp.base09, bold = true },
	}
end
return M
