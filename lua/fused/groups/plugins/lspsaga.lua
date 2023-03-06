local M = {}

M.load_hl = function(cp)
	-- general
	return {
		TitleString = { bg = cp.white, fg = cp.dark, bold = true },
		TitleSymbol = { fg = cp.white, bg = cp.dark },
		TitleIcon = { fg = cp.dark, bg = cp.white },
		TitleFileIcon = { fg = cp.dark, bg = cp.white },
		SagaBorder = { fg = cp.border, bg = cp.bg },
		SagaExpand = { fg = cp.err },
		SagaCollapse = { fg = cp.err },
		SagaBeacon = { bg = cp.magenta },
		-- code action
		ActionPreviewNormal = { link = "SagaBorder" },
		ActionPreviewBorder = { link = "SagaBorder" },
		ActionPreviewTitle = { fg = cp.magenta2, bg = cp.bg },
		CodeActionNormal = { link = "SagaBorder" },
		CodeActionBorder = { link = "SagaBorder" },
		CodeActionText = { fg = cp.warn },
		CodeActionConceal = { fg = cp.search },
		-- finder
		FinderSelection = { fg = cp.property },
		FinderFileName = { fg = cp.magenta2, italic = true },
		FinderCount = { link = "Title" },
		FinderIcon = { fg = cp.err },
		FinderType = { fg = cp.const },
		--finder spinner
		FinderSpinnerTitle = { fg = cp.const, bold = true },
		FinderSpinner = { fg = cp.const, bold = true },
		FinderPreviewSearch = { link = "Search" },
		FinderVirtText = { fg = cp.err },
		FinderNormal = { fg = cp.white },
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
		RenameNormal = { fg = cp.orange, bg = cp.bg },
		RenameMatch = { link = "Search" },
		-- diagnostic
		DiagnosticSource = { fg = "gray" },
		DiagnosticNormal = { link = "SagaBorder" },
		DiagnosticBorder = { link = "SagaBorder" },
		DiagnosticErrorBorder = { link = "SagaBorder" },
		DiagnosticWarnBorder = { link = "SagaBorder" },
		DiagnosticHintBorder = { link = "SagaBorder" },
		DiagnosticInfoBorder = { link = "SagaBorder" },
		DiagnosticPos = { fg = cp.white },
		DiagnosticWord = { fg = cp.white },
		-- Call Hierachry
		CallHierarchyNormal = { link = "SagaBorder" },
		CallHierarchyBorder = { link = "SagaBorder" },
		CallHierarchyIcon = { fg = cp.magenta2 },
		CallHierarchyTitle = { fg = cp.err },
		-- lightbulb
		LspSagaLightBulb = { link = "DiagnosticSignHint" },
		-- shadow
		SagaShadow = { bg = cp.dark },
		-- Outline
		OutlineIndent = { fg = cp.magenta },
		OutlinePreviewBorder = { link = "SagaBorder" },
		OutlinePreviewNormal = { link = "SagaBorder" },
		-- Float term
		TerminalBorder = { link = "SagaBorder" },
		TerminalNormal = { link = "SagaBorder" },
	}
end
return M
