local M = {}

M.get_hl_groups = function(_)
	return {
		NavicIconsFile = { link = "CmpItemKindFile" },
		NavicIconsModule = { link = "CmpItemKindModule" },
		NavicIconsNamespace = { link = "String" },
		NavicIconsPackage = { link = "CmpItemKindModule" },
		NavicIconsClass = { link = "CmpItemKindClass" },
		NavicIconsMethod = { link = "CmpItemKindMethod" },
		NavicIconsProperty = { link = "CmpItemKindProperty" },
		NavicIconsField = { link = "CmpItemKindField" },
		NavicIconsConstructor = { link = "CmpItemKindConstructor" },
		NavicIconsEnum = { link = "CmpItemKindEnum" },
		NavicIconsInterface = { link = "CmpItemKindInterface" },
		NavicIconsFunction = { link = "CmpItemKindFunction" },
		NavicIconsVariable = { link = "CmpItemKindVariable" },
		NavicIconsConstant = { link = "CmpItemKindConstant" },
		NavicIconsString = { link = "String" },
		NavicIconsNumber = { link = "CmpItemKindEnum" },
		NavicIconsBoolean = { link = "@field" },
		NavicIconsObject = { link = "@field" },
		NavicIconsKey = { link = "@field" },
		NavicIconsNull = { link = "String" },
		NavicIconsEnumMember = { link = "CmpItemKindEnumMember" },
		NavicIconsStruct = { link = "CmpItemKindStruct" },
		NavicIconsEvent = { link = "CmpItemKindEvent" },
		NavicIconsOperator = { link = "CmpItemKindOperator" },
		NavicIconsTypeParameter = { link = "CmpItemKindTypeParameter" },
		NavicText = { link = "String" },
		NavicSeparator = { link = "String" },
		NavicIconsArray = { link = "NavicIconsObject" },
	}
end

return M
