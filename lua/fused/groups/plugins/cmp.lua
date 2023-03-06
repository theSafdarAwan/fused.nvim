local M = {}

M.get_hl_groups = function(cp)
	return {
		-- FIX: telescope border is being used by cmp fix this
		TelescopeBorder = { fg = cp.border },
		CmpItemAbbr = { fg = cp.white },
		CmpItemAbbrDeprecated = { fg = cp.cp2 },
		CmpItemAbbrMatch = { fg = cp.search },
		CmpItemAbbrMatchFuzzy = { fg = cp.warn },
		CmpItemMenu = { fg = cp.cp3 },
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
		CmpItemKindColor = { fg = cp.white },
		CmpItemKindReference = { fg = cp.search },
		CmpItemKindEnumMember = { fg = cp.const },
		CmpItemKindStruct = { link = "@constructor" },
		CmpItemKindValue = { fg = cp.const },
		CmpItemKindEvent = { fg = cp.blue },
		CmpItemKindOperator = { fg = cp.white },
		CmpItemKindTypeParameter = { fg = cp.const },
		CmpItemKindCopilot = { fg = cp.blue2 },
	}
end

return M
