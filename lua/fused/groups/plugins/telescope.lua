local M = {}

M.load_hl = function(cp)
	return {
		TelescopeSelection = { bg = cp.bg_windows2 },
		TelescopeSelectionCaret = { fg = cp.warn },
		TelescopeMultiSelection = { fg = cp.dark },
		TelescopeMatching = { fg = cp.search },
		TelescopePromptPrefix = { fg = cp.warn },
		TelescopeBorder = { fg = cp.border },
		TelescopePromptBorder = { link = "TelescopeBorder" },
		TelescopeResultsBorder = { link = "TelescopeBorder" },
		TelescopePreviewBorder = { link = "TelescopeBorder" },
		TelescopeTitle = { fg = cp.red2, bold = true },
		TelescopePromptTitle = { fg = cp.warn, bold = true },
		TelescopeResultsTitle = { fg = cp.magenta, bold = true },
		TelescopePreviewTitle = { fg = cp.red2, bold = true },
	}
end
return M
