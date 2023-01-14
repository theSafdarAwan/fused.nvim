local M = {}

M.load_hl = function(hl, cp)
	-- general
	hl("TitleString", { bg = cp.white, fg = cp.dark, bold = true })
	hl("TitleSymbol", { fg= cp.white, bg = cp.dark })
	hl("TitleIcon", { fg = cp.dark, bg = cp.white })
	hl("TitleFileIcon", { fg = cp.dark, bg = cp.white })
	hl("SagaBorder", { fg = cp.border, bg = cp.bg })
	hl("SagaExpand", { fg = cp.err })
	hl("SagaCollapse", { fg = cp.err })
	hl("SagaBeacon", { bg = cp.magenta })
	-- code action
	hl("ActionPreviewNormal", { link = "SagaBorder" })
	hl("ActionPreviewBorder", { link = "SagaBorder" })
	hl("ActionPreviewTitle", { fg = cp.magenta2, bg = cp.bg })
	hl("CodeActionNormal", { link = "SagaBorder" })
	hl("CodeActionBorder", { link = "SagaBorder" })
	hl("CodeActionText", { fg = cp.warn })
	hl("CodeActionConceal", { fg = cp.search })
	-- finder
	hl("FinderSelection", { fg = cp.property })
	hl("FinderFileName", { fg = cp.magenta2, italic = true })
	hl("FinderCount", { link = "Title" })
	hl("FinderIcon", { fg = cp.err })
	hl("FinderType", { fg = cp.const })
	--finder spinner
	hl("FinderSpinnerTitle", { fg = cp.const, bold = true })
	hl("FinderSpinner", { fg = cp.const, bold = true })
	hl("FinderPreviewSearch", { link = "Search" })
	hl("FinderVirtText", { fg = cp.err })
	hl("FinderNormal", { fg = cp.white })
	hl("FinderBorder", { link = "SagaBorder" })
	hl("FinderPreviewBorder", { link = "SagaBorder" })
	-- definition
	hl("DefinitionBorder", { link = "SagaBorder" })
	hl("DefinitionNormal", { link = "SagaBorder" })
	hl("DefinitionSearch", { link = "Search" })
	-- hover
	hl("HoverNormal", { link = "SagaBorder" })
	hl("HoverBorder", { link = "SagaBorder" })
	-- rename
	hl("RenameBorder", { link = "SagaBorder" })
	hl("RenameNormal", { fg = cp.orange, bg = cp.bg })
	hl("RenameMatch", { link = "Search" })
	-- diagnostic
	hl("DiagnosticSource", { fg = "gray" })
	hl("DiagnosticNormal", { link = "SagaBorder" })
	hl("DiagnosticBorder", { link = "SagaBorder" })
	hl("DiagnosticErrorBorder", { link = "SagaBorder" })
	hl("DiagnosticWarnBorder", { link = "SagaBorder" })
	hl("DiagnosticHintBorder", { link = "SagaBorder" })
	hl("DiagnosticInfoBorder", { link = "SagaBorder" })
	hl("DiagnosticPos", { fg = cp.white })
	hl("DiagnosticWord", { fg = cp.white })
	-- Call Hierachry
	hl("CallHierarchyNormal", { link = "SagaBorder" })
	hl("CallHierarchyBorder", { link = "SagaBorder" })
	hl("CallHierarchyIcon", { fg = cp.magenta2 })
	hl("CallHierarchyTitle", { fg = cp.err })
	-- lightbulb
	hl("LspSagaLightBulb", { link = "DiagnosticSignHint" })
	-- shadow
	hl("SagaShadow", { bg = cp.dark })
	-- Outline
	hl("OutlineIndent", { fg = cp.magenta })
	hl("OutlinePreviewBorder", { link = "SagaBorder" })
	hl("OutlinePreviewNormal", { link = "SagaBorder" })
	-- Float term
	hl("TerminalBorder", { link = "SagaBorder" })
	hl("TerminalNormal", { link = "SagaBorder" })
end
return M
