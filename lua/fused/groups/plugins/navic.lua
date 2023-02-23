local M = {}

M.load_hl = function(hl, cp)
	hl("NavicIconsFile", { link = "CmpItemKindFile" })
	hl("NavicIconsModule", { link = "CmpItemKindModule" })
	hl("NavicIconsNamespace", { link = "String" })
	hl("NavicIconsPackage", { link = "CmpItemKindModule" })
	hl("NavicIconsClass", { link = "CmpItemKindClass" })
	hl("NavicIconsMethod", { link = "CmpItemKindMethod" })
	hl("NavicIconsProperty", { link = "CmpItemKindProperty" })
	hl("NavicIconsField", { link = "CmpItemKindField" })
	hl("NavicIconsConstructor", { link = "CmpItemKindConstructor" })
	hl("NavicIconsEnum", { link = "CmpItemKindEnum" })
	hl("NavicIconsInterface", { link = "CmpItemKindInterface" })
	hl("NavicIconsFunction", { link = "CmpItemKindFunction" })
	hl("NavicIconsVariable", { link = "CmpItemKindVariable" })
	hl("NavicIconsConstant", { link = "CmpItemKindConstant" })
	hl("NavicIconsString", { link = "String" })
	hl("NavicIconsNumber", { link = "CmpItemKindEnum" })
	hl("NavicIconsBoolean", { link = "@field" })
	hl("NavicIconsObject", { link = "@field" })
	hl("NavicIconsKey", { link = "@field" })
	hl("NavicIconsNull", { link = "String" })
	hl("NavicIconsEnumMember", { link = "CmpItemKindEnumMember" })
	hl("NavicIconsStruct", { link = "CmpItemKindStruct" })
	hl("NavicIconsEvent", { link = "CmpItemKindEvent" })
	hl("NavicIconsOperator", { link = "CmpItemKindOperator" })
	hl("NavicIconsTypeParameter", { link = "CmpItemKindTypeParameter" })
	hl("NavicText", { link = "String" })
	hl("NavicSeparator", { link = "String" })
	hl("NavicIconsArray", { link = "NavicIconsObject" })
end

return M