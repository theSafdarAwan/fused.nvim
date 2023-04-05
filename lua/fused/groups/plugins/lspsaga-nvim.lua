local M = {}

M.load_hl = function(cp)
	local utils = require("fused.utils")
	-- general
	return {
		TitleString = { fg = cp.base05 },
		TitleSymbol = { fg = cp.base04, bg = cp.base02 },
		TitleIcon = { fg = cp.base02, bg = cp.base04 },
		TitleFileIcon = { fg = cp.base02, bg = cp.base04 },
		SagaBorder = { fg = cp.base02, bg = cp.bg },
		SagaExpand = { fg = cp.base09 },
		SagaCollapse = { fg = cp.base09 },
		SagaBeacon = { bg = cp.base12 },
		-- code action
		ActionPreviewNormal = { link = "SagaBorder" },
		ActionPreviewBorder = { link = "SagaBorder" },
		ActionPreviewTitle = { fg = cp.base12, bg = cp.bg },
		CodeActionNormal = { link = "SagaBorder" },
		CodeActionBorder = { link = "SagaBorder" },
		CodeActionText = { fg = cp.base07 },
		CodeActionConceal = { fg = cp.base13 },
		-- finder
		FinderSelection = { fg = cp.base08 },
		FinderFileName = { fg = cp.base12, italic = utils.italics },
		FinderCount = { link = "Title" },
		FinderIcon = { fg = cp.base09 },
		FinderType = { fg = cp.base10 },
		--finder spinner
		FinderSpinnerTitle = { fg = cp.base10, bold = true },
		FinderSpinner = { fg = cp.base10, bold = true },
		FinderPreviewSearch = { link = "Search" },
		FinderVirtText = { fg = cp.base09 },
		FinderNormal = { fg = cp.base04 },
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
		RenameNormal = { fg = cp.base10, bg = cp.bg },
		RenameMatch = { link = "Search" },
		-- diagnostic
		DiagnosticSource = { fg = "gray" },
		DiagnosticNormal = { link = "SagaBorder" },
		DiagnosticBorder = { link = "SagaBorder" },
		DiagnosticErrorBorder = { link = "SagaBorder" },
		DiagnosticWarnBorder = { link = "SagaBorder" },
		DiagnosticHintBorder = { link = "SagaBorder" },
		DiagnosticInfoBorder = { link = "SagaBorder" },
		DiagnosticPos = { fg = cp.base04 },
		DiagnosticWord = { fg = cp.base04 },
		-- Call Hierachry
		CallHierarchyNormal = { link = "SagaBorder" },
		CallHierarchyBorder = { link = "SagaBorder" },
		CallHierarchyIcon = { fg = cp.base12 },
		CallHierarchyTitle = { fg = cp.base09 },
		-- lightbulb
		LspSagaLightBulb = { link = "DiagnosticSignHint" },
		-- shadow
		SagaShadow = { bg = cp.base02 },
		-- Outline
		OutlineIndent = { fg = cp.base12 },
		OutlinePreviewBorder = { link = "SagaBorder" },
		OutlinePreviewNormal = { link = "SagaBorder" },
		-- Float term
		TerminalBorder = { link = "SagaBorder" },
		TerminalNormal = { link = "SagaBorder" },
	}
end
return M
