local M = {}

M.get_hl_groups = function(cp)
	return {
		LspReferenceText = { fg = cp.base06, italic = true, underline = true }, -- used for highlighting "text" references
		LspReferenceRead = { fg = cp.warn, italic = true, underline = true }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = cp.err, italic = true, underline = true }, -- used for highlighting "write" references

		DiagnosticVirtualTextError = { fg = cp.err_sev, bg = cp.base02 },
		DiagnosticVirtualTextWarn = { fg = cp.warn, bg = cp.base02 },
		DiagnosticVirtualTextHint = { fg = cp.blue, bg = cp.base02 },
		DiagnosticVirtualTextInfo = { fg = cp.property, bg = cp.base02 },

		DiagnosticFloatingError = { fg = cp.err_sev, bg = cp.base02 },
		DiagnosticFloatingWarn = { fg = cp.warn, bg = cp.base02 },
		DiagnosticFloatingHint = { fg = cp.blue, bg = cp.base02 },
		DiagnosticFloatingInfo = { fg = cp.property, bg = cp.base02 },

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
