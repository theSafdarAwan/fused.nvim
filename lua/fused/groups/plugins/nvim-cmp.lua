local M = {}

M.get_hl_groups = function(cp)
	return {
		CmpItemAbbr = { fg = cp.base06 },
		CmpItemAbbrDeprecated = { fg = cp.base06 },
		CmpItemAbbrMatch = { fg = cp.base15 },
		CmpItemAbbrMatchFuzzy = { fg = cp.base09 },
		CmpItemMenu = { fg = cp.base04 },
		CmpItemKindSnippet = { fg = cp.base15 },
		-- Item kind
		CmpItemKind = { fg = cp.base10 },
		CmpItemKindText = { link = "@text" },
		CmpItemKindFunction = { link = "@function" },
		CmpItemKindKeyword = { link = "@keyword" },
		CmpItemKindField = { link = "@field" },
		CmpItemKindVariable = { link = "@variable" },
		CmpItemKindEnum = { link = "CmpItemKindText" },
		CmpItemKindMethod = { link = "@method" },
		CmpItemKindConstructor = { link = "@constructor" },
		CmpItemKindFolder = { fg = cp.base09 },
		CmpItemKindModule = { fg = cp.base09 },
		CmpItemKindConstant = { link = "@constant" },
		CmpItemKindProperty = { link = "@property" },
		CmpItemKindUnit = { fg = cp.base12 },
		CmpItemKindClass = { link = "@constructor" },
		CmpItemKindFile = { fg = cp.base12 },
		CmpItemKindInterface = { fg = cp.base09 },
		CmpItemKindColor = { fg = cp.base06 },
		CmpItemKindReference = { fg = cp.base15 },
		CmpItemKindEnumMember = { fg = cp.base12 },
		CmpItemKindStruct = { link = "@constructor" },
		CmpItemKindValue = { fg = cp.base12 },
		CmpItemKindEvent = { fg = cp.base10 },
		CmpItemKindOperator = { fg = cp.base06 },
		CmpItemKindTypeParameter = { fg = cp.base12 },
		CmpItemKindCopilot = { fg = cp.base102 },
	}
end

return M
