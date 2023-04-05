local M = {}

M.get_hl_groups = function(cp)
	return {
		CmpItemAbbr = { fg = cp.base04 },
		CmpItemAbbrDeprecated = { fg = cp.base04 },
		CmpItemAbbrMatch = { fg = cp.base13 },
		CmpItemAbbrMatchFuzzy = { fg = cp.base07 },
		CmpItemMenu = { fg = cp.base02 },
		CmpItemKindSnippet = { fg = cp.base13 },
		-- Item kind
		CmpItemKind = { fg = cp.base08 },
		CmpItemKindText = { link = "@text" },
		CmpItemKindFunction = { link = "@function" },
		CmpItemKindKeyword = { link = "@keyword" },
		CmpItemKindField = { link = "@field" },
		CmpItemKindVariable = { link = "@variable" },
		CmpItemKindEnum = { link = "CmpItemKindText" },
		CmpItemKindMethod = { link = "@method" },
		CmpItemKindConstructor = { link = "@constructor" },
		CmpItemKindFolder = { fg = cp.base07 },
		CmpItemKindModule = { fg = cp.base07 },
		CmpItemKindConstant = { link = "@constant" },
		CmpItemKindProperty = { link = "@property" },
		CmpItemKindUnit = { fg = cp.base10 },
		CmpItemKindClass = { link = "@constructor" },
		CmpItemKindFile = { fg = cp.base10 },
		CmpItemKindInterface = { fg = cp.base07 },
		CmpItemKindColor = { fg = cp.base04 },
		CmpItemKindReference = { fg = cp.base13 },
		CmpItemKindEnumMember = { fg = cp.base10 },
		CmpItemKindStruct = { link = "@constructor" },
		CmpItemKindValue = { fg = cp.base10 },
		CmpItemKindEvent = { fg = cp.base08 },
		CmpItemKindOperator = { fg = cp.base04 },
		CmpItemKindTypeParameter = { fg = cp.base10 },
		CmpItemKindCopilot = { fg = cp.base082 },
	}
end

return M
