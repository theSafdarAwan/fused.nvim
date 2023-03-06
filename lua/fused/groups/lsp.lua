local M = {}

M.load_hl = function(hl, cp)
	return {
		LspReferenceText = { fg = cp.white, italic = true, underline = true }, -- used for highlighting "text" references
		LspReferenceRead = { fg = cp.warn, italic = true, underline = true }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = cp.err, italic = true, underline = true }, -- used for highlighting "write" references

		DiagnosticVirtualTextError = { fg = cp.err_sev, bg = cp.bg_windows2 },
		DiagnosticVirtualTextWarn = { fg = cp.warn, bg = cp.bg_windows2 },
		DiagnosticVirtualTextHint = { fg = cp.blue, bg = cp.bg_windows2 },
		DiagnosticVirtualTextInfo = { fg = cp.property, bg = cp.bg_windows2 },

		DiagnosticFloatingError = { fg = cp.err_sev, bg = cp.bg_windows2 },
		DiagnosticFloatingWarn = { fg = cp.warn, bg = cp.bg_windows2 },
		DiagnosticFloatingHint = { fg = cp.blue, bg = cp.bg_windows2 },
		DiagnosticFloatingInfo = { fg = cp.property, bg = cp.bg_windows2 },

		DiagnosticSignError = { fg = cp.err_sev },
		DiagnosticSignWarn = { fg = cp.warn },
		DiagnosticSignHint = { fg = cp.blue },
		DiagnosticSignInfo = { link = "@field" },

		DiagnosticUnderlineError = { undercurl = true },
		-- { fg = Colors.error_red, bg = Colors.color_2, underline = true }
		DiagnosticUnderlineWarn = { undercurl = true },
		-- { fg = Colors.color_20, bg = Colors.color_2, underline = true }
		DiagnosticUnderlineInfo = { undercurl = true },
		-- { fg = Colors.color_21, bg = Colors.color_2, underline = true }
		DiagnosticUnderlineHint = { underline = true },
		-- { fg = Colors.fl_color_6, bg = Colors.color_2, underline = true }
	}
end

return M
