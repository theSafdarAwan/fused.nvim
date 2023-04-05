local M = {}

M.load_hl = function(_)
	return {
		NavicIconsFile = { link = "CmpItemKindFile" },
		NavicIconsModule = { link = "CmpItemKindModule" },
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
		NavicIconsNumber = { link = "CmpItemKindEnum" },
		NavicIconsBoolean = { link = "@field" },
		NavicIconsObject = { link = "@field" },
		NavicIconsKey = { link = "@field" },
		NavicIconsEnumMember = { link = "CmpItemKindEnumMember" },
		NavicIconsStruct = { link = "CmpItemKindStruct" },
		NavicIconsEvent = { link = "CmpItemKindEvent" },
		NavicIconsOperator = { link = "CmpItemKindOperator" },
		NavicIconsTypeParameter = { link = "CmpItemKindTypeParameter" },
		NavicText = { link = "@variable" },
		NavicIconsNamespace = { link = "NavicText" },
		NavicIconsString = { link = "NavicIconsNamespace" },
		NavicIconsNull = { link = "NavicIconsString" },
		NavicSeparator = { link = "NavicIconsString" },
		NavicIconsArray = { link = "NavicIconsObject" },
	}
end

return M
