local M = {}

M.get_hl_groups = function(cp)
	-- general
	return {
		TitleString = { bg = cp.base06, fg = cp.base04, bold = true },
		TitleSymbol = { fg = cp.base06, bg = cp.base04 },
		TitleIcon = { fg = cp.base04, bg = cp.base06 },
		TitleFileIcon = { fg = cp.base04, bg = cp.base06 },
		SagaBorder = { fg = cp.base04, bg = cp.bg },
		SagaExpand = { fg = cp.base11 },
		SagaCollapse = { fg = cp.base11 },
		SagaBeacon = { bg = cp.base14 },
		-- code action
		ActionPreviewNormal = { link = "SagaBorder" },
		ActionPreviewBorder = { link = "SagaBorder" },
		ActionPreviewTitle = { fg = cp.base14, bg = cp.bg },
		CodeActionNormal = { link = "SagaBorder" },
		CodeActionBorder = { link = "SagaBorder" },
		CodeActionText = { fg = cp.base09 },
		CodeActionConceal = { fg = cp.base15 },
		-- finder
		FinderSelection = { fg = cp.base10 },
		FinderFileName = { fg = cp.base14, italic = true },
		FinderCount = { link = "Title" },
		FinderIcon = { fg = cp.base11 },
		FinderType = { fg = cp.base12 },
		--finder spinner
		FinderSpinnerTitle = { fg = cp.base12, bold = true },
		FinderSpinner = { fg = cp.base12, bold = true },
		FinderPreviewSearch = { link = "Search" },
		FinderVirtText = { fg = cp.base11 },
		FinderNormal = { fg = cp.base06 },
		FinderBorder = { link = "SagaBorder" },
		FinderPreviewBorder = { link = "SagaBorder" },
		-- definition
		DefinitionBorder = { link = "SagaBorder" },
		DefinitionNormal = { link = "SagaBorder" },
		DefinitionSearch = { link = "Search" },
		-- hover
		HoverNormal = { link = "SagaBorder" },
		HoverBorder = { link = "SagaBorder" },
		-- rename
		RenameBorder = { link = "SagaBorder" },
		RenameNormal = { fg = cp.base12, bg = cp.bg },
		RenameMatch = { link = "Search" },
		-- diagnostic
		DiagnosticSource = { fg = "gray" },
		DiagnosticNormal = { link = "SagaBorder" },
		DiagnosticBorder = { link = "SagaBorder" },
		DiagnosticErrorBorder = { link = "SagaBorder" },
		DiagnosticWarnBorder = { link = "SagaBorder" },
		DiagnosticHintBorder = { link = "SagaBorder" },
		DiagnosticInfoBorder = { link = "SagaBorder" },
		DiagnosticPos = { fg = cp.base06 },
		DiagnosticWord = { fg = cp.base06 },
		-- Call Hierachry
		CallHierarchyNormal = { link = "SagaBorder" },
		CallHierarchyBorder = { link = "SagaBorder" },
		CallHierarchyIcon = { fg = cp.base14 },
		CallHierarchyTitle = { fg = cp.base11 },
		-- lightbulb
		LspSagaLightBulb = { link = "DiagnosticSignHint" },
		-- shadow
		SagaShadow = { bg = base04 },
		-- Outline
		OutlineIndent = { fg = cp.base14 },
		OutlinePreviewBorder = { link = "SagaBorder" },
		OutlinePreviewNormal = { link = "SagaBorder" },
		-- Float term
		TerminalBorder = { link = "SagaBorder" },
		TerminalNormal = { link = "SagaBorder" },
	}
end
return M
