local M = {}

M.get_hl_groups = function(cp)
	return {
		-- FIX: telescope border is being used by cmp fix this
		TelescopeBorder = { fg = cp.base04 },
		CmpItemAbbr = { fg = cp.base06 },
		CmpItemAbbrDeprecated = { fg = cp.base06 },
		CmpItemAbbrMatch = { fg = cp.search },
		CmpItemAbbrMatchFuzzy = { fg = cp.warn },
		CmpItemMenu = { fg = cp.base04 },
		CmpItemKindSnippet = { fg = cp.search },
		-- Item kind
		CmpItemKind = { fg = cp.property },
		CmpItemKindText = { link = "@text" },
		CmpItemKindFunction = { link = "@function" },
		CmpItemKindKeyword = { link = "@keyword" },
		CmpItemKindField = { link = "@field" },
		CmpItemKindVariable = { link = "@variable" },
		CmpItemKindEnum = { link = "CmpItemKindText" },
		CmpItemKindMethod = { link = "@method" },
		CmpItemKindConstructor = { link = "@constructor" },
		CmpItemKindFolder = { fg = cp.warn },
		CmpItemKindModule = { fg = cp.warn },
		CmpItemKindConstant = { link = "@constant" },
		CmpItemKindProperty = { link = "@property" },
		CmpItemKindUnit = { fg = cp.const },
		CmpItemKindClass = { link = "@constructor" },
		CmpItemKindFile = { fg = cp.const },
		CmpItemKindInterface = { fg = cp.warn },
		CmpItemKindColor = { fg = cp.base06 },
		CmpItemKindReference = { fg = cp.search },
		CmpItemKindEnumMember = { fg = cp.const },
		CmpItemKindStruct = { link = "@constructor" },
		CmpItemKindValue = { fg = cp.const },
		CmpItemKindEvent = { fg = cp.blue },
		CmpItemKindOperator = { fg = cp.base06 },
		CmpItemKindTypeParameter = { fg = cp.const },
		CmpItemKindCopilot = { fg = cp.blue2 },
	}
end

return M
