local M = {}

M.load_hl = function(hl, cp)
	hl("TelescopeSelection", { bg = cp.bg_windows2 })
	hl("TelescopeSelectionCaret", { fg = cp.warn })
	hl("TelescopeMultiSelection", { fg = cp.dark })
	hl("TelescopeMatching", { fg = cp.search })
	hl("TelescopePromptPrefix", { fg = cp.warn })
	hl("TelescopeBorder", { fg = cp.border })
	hl("TelescopePromptBorder", { link = "TelescopeBorder" })
	hl("TelescopeResultsBorder", { link = "TelescopeBorder" })
	hl("TelescopePreviewBorder", { link = "TelescopeBorder" })
	hl("TelescopeTitle", { fg = cp.red2, bold = true })
	hl("TelescopePromptTitle", { fg = cp.warn, bold = true })
	hl("TelescopeResultsTitle", { fg = cp.magenta, bold = true })
	hl("TelescopePreviewTitle", { fg = cp.red2, bold = true })
end
return M
