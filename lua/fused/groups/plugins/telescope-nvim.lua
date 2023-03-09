local M = {}

M.get_hl_groups = function(cp)
	return {
		TelescopeSelection = { bg = cp.base02 },
		TelescopeSelectionCaret = { fg = cp.warn },
		TelescopeMultiSelection = { fg = cp.base04 },
		TelescopeMatching = { fg = cp.search },
		TelescopePromptPrefix = { fg = cp.warn },
		TelescopeBorder = { fg = cp.base04 },
		TelescopePromptBorder = { link = "TelescopeBorder" },
		TelescopeResultsBorder = { link = "TelescopeBorder" },
		TelescopePreviewBorder = { link = "TelescopeBorder" },
		TelescopeTitle = { fg = cp.red, bold = true },
		TelescopePromptTitle = { fg = cp.warn, bold = true },
		TelescopeResultsTitle = { fg = cp.magenta, bold = true },
		TelescopePreviewTitle = { fg = cp.red, bold = true },
	}
end
return M
