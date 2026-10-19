local M = {}

M.get_hl_groups = function(cp)
	local utils = require("fused.utils")
	return {
		LspReferenceText = { fg = cp.base06, italic = utils.italics, underline = true }, -- used for highlighting "text" references
		LspReferenceRead = { fg = cp.base09, italic = utils.italics, underline = true }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = cp.base11, italic = utils.italics, underline = true }, -- used for highlighting "write" references

		-- the base groups, nvim and many plugins (lualine, ...) read their colors from these
		DiagnosticError = { fg = cp.base08 },
		DiagnosticWarn = { fg = cp.base09 },
		DiagnosticInfo = { fg = cp.base10 },
		DiagnosticHint = { fg = cp.base10 },
		DiagnosticOk = { fg = cp.base15 },
		DiagnosticUnnecessary = { link = "Comment" },
		DiagnosticDeprecated = { strikethrough = true },
		LspInlayHint = { fg = cp.base05, italic = utils.italics },
		LspCodeLens = { fg = cp.base05 },
		LspSignatureActiveParameter = { fg = cp.base09, bold = true },

		DiagnosticVirtualTextError = { fg = cp.base08, bg = cp.base02 },
		DiagnosticVirtualTextWarn = { fg = cp.base09, bg = cp.base02 },
		DiagnosticVirtualTextHint = { fg = cp.base10, bg = cp.base02 },
		DiagnosticVirtualTextInfo = { fg = cp.base10, bg = cp.base02 },

		DiagnosticFloatingError = { fg = cp.base08, bg = cp.base02 },
		DiagnosticFloatingWarn = { fg = cp.base09, bg = cp.base02 },
		DiagnosticFloatingHint = { fg = cp.base10, bg = cp.base02 },
		DiagnosticFloatingInfo = { fg = cp.base10, bg = cp.base02 },

		DiagnosticSignError = { fg = cp.base08 },
		DiagnosticSignWarn = { fg = cp.base09 },
		DiagnosticSignHint = { fg = cp.base10 },
		DiagnosticSignInfo = { fg = cp.base10 },

		DiagnosticUnderlineError = { undercurl = true },
		-- { fg = Colors.error_red, bg = Colors.color_2, underline = true }
		DiagnosticUnderlineWarn = { undercurl = true },
		-- { fg = Colors.color_20, bg = Colors.color_2, underline = true }
		DiagnosticUnderlineInfo = { undercurl = true },
		-- { fg = Colors.color_21, bg = Colors.color_2, underline = true }
		DiagnosticUnderlineHint = { underline = true },
		-- { fg = Colors.fl_color_6, bg = Colors.color_2, underline = true }

		-- syntax tokens
		["@lsp.type.class"] = { link = "@type" },
		["@lsp.type.decorator"] = { link = "@function" },
		["@lsp.type.enum"] = { link = "Structure" },
		["@lsp.type.enumMember"] = { link = "Constant" },
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.interface"] = { link = "Structure" },
		["@lsp.type.macro"] = { link = "Macro" },
		["@lsp.type.method"] = { link = "@function.method" },
		["@lsp.type.namespace"] = { link = "Structure" },
		["@lsp.type.parameter"] = { link = "@variable.parameter" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.type.struct"] = { link = "Structure" },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.typeParameter"] = { link = "Identifier" },
		["@lsp.type.variable"] = { link = "@variable" },
		["@lsp.type.keyword"] = { link = "@keyword" },
	}
end

return M
