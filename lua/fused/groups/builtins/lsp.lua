local M = {}

M.load_hl = function(cp)
	local utils = require("fused.utils")
	return {
		LspReferenceText = { fg = cp.base04, italic = utils.italics, undercurl = true }, -- used for highlighting "text" references
		LspReferenceRead = { fg = cp.base07, italic = utils.italics, undercurl = true }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = cp.base09, italic = utils.italics, undercurl = true }, -- used for highlighting "write" references

		DiagnosticVirtualTextError = { fg = cp.base06, bg = cp.popup_bg },
		DiagnosticVirtualTextWarn = { fg = cp.base07, bg = cp.popup_bg },
		DiagnosticVirtualTextHint = { fg = cp.base08, bg = cp.popup_bg },
		DiagnosticVirtualTextInfo = { fg = cp.base08, bg = cp.popup_bg },

		DiagnosticFloatingError = { fg = cp.base06, bg = cp.popup_bg },
		DiagnosticFloatingWarn = { fg = cp.base07, bg = cp.popup_bg },
		DiagnosticFloatingHint = { fg = cp.base08, bg = cp.popup_bg },
		DiagnosticFloatingInfo = { fg = cp.base08, bg = cp.popup_bg },

		DiagnosticSignError = { fg = cp.base06 },
		DiagnosticSignWarn = { fg = cp.base07 },
		DiagnosticSignHint = { fg = cp.base08 },
		DiagnosticSignInfo = { link = "@field" },

		DiagnosticUnderlineError = { undercurl = true },
		-- { fg = Colors.error_red, bg = Colors.color_2, undercurl = true }
		DiagnosticUnderlineWarn = { undercurl = true },
		-- { fg = Colors.color_20, bg = Colors.color_2, undercurl = true }
		DiagnosticUnderlineInfo = { undercurl = true },
		-- { fg = Colors.color_21, bg = Colors.color_2, undercurl = true }
		DiagnosticUnderlineHint = { undercurl = true },
		-- { fg = Colors.fl_color_6, bg = Colors.color_2, undercurl = true }

		-- don't dim the unnecessary code
		DiagnosticUnnecessary = {},

		-- syntax tokens
		["@lsp.type.class"] = { link = "@type" },
		["@lsp.type.decorator"] = { link = "@function" },
		["@lsp.type.enum"] = { link = "Structure" },
		["@lsp.type.enumMember"] = { link = "Constant" },
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.interface"] = { link = "Structure" },
		["@lsp.type.macro"] = { link = "Macro" },
		["@lsp.type.method"] = { link = "@method" },
		["@lsp.type.namespace"] = { link = "Structure" },
		["@lsp.type.parameter"] = { link = "@parameter" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.type.struct"] = { link = "@structure" },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.typeParameter"] = { link = "Identifier" },
		["@lsp.type.variable"] = { link = "@variable" },
		["@lsp.type.keyword"] = { link = "@keyword" },
	}
end

return M
