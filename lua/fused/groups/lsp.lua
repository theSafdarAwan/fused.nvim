local M = {}

M.load_hl = function(hl, cp)
	hl("LspReferenceText", { fg = cp.white, italic = true, underline =true }) -- used for highlighting "text" references
	hl("LspReferenceRead", { fg = cp.warn, italic = true, underline = true }) -- used for highlighting "read" references
	hl("LspReferenceWrite", { fg = cp.err, italic = true, underline = true }) -- used for highlighting "write" references

	hl("DiagnosticVirtualTextError", { fg = cp.err_sev, bg = cp.bg_windows2 })
	hl("DiagnosticVirtualTextWarn", { fg = cp.warn, bg = cp.bg_windows2 })
	hl("DiagnosticVirtualTextHint", { fg = cp.blue, bg = cp.bg_windows2 })
	hl("DiagnosticVirtualTextInfo", { fg = cp.property, bg = cp.bg_windows2 })

	hl("DiagnosticFloatingError", { fg = cp.err_sev, bg = cp.bg_windows2 })
	hl("DiagnosticFloatingWarn", { fg = cp.warn, bg = cp.bg_windows2 })
	hl("DiagnosticFloatingHint", { fg = cp.blue, bg = cp.bg_windows2 })
	hl("DiagnosticFloatingInfo", { fg = cp.property, bg = cp.bg_windows2 })

	hl("DiagnosticSignError", { fg = cp.err_sev })
	hl("DiagnosticSignWarn", { fg = cp.warn })
	hl("DiagnosticSignHint", { fg = cp.blue })
	hl("DiagnosticSignInfo", { link = "@field" })

	hl(
		"DiagnosticUnderlineError",
		-- { fg = Colors.error_red, bg = Colors.color_2, underline = true }
		{ underline = true }
	)
	hl(
		"DiagnosticUnderlineWarn",
		-- { fg = Colors.color_20, bg = Colors.color_2, underline = true }
		{ underline = true }
	)
	hl(
		"DiagnosticUnderlineInfo",
		-- { fg = Colors.color_21, bg = Colors.color_2, underline = true }
		{ underline = true }
	)
	hl(
		"DiagnosticUnderlineHint",
		-- { fg = Colors.fl_color_6, bg = Colors.color_2, underline = true }
		{ underline = true }
	)
end

return M
