local M = {}

M.load_hl = function(cp)
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
		TelescopeTitle = { fg = cp.base09, styles = "bold" },
		TelescopePromptTitle = { fg = cp.base07, styles = "bold" },
		TelescopeResultsTitle = { fg = cp.base12, styles = "bold" },
		TelescopePreviewTitle = { fg = cp.base09, styles = "bold" },
	}
end
return M
