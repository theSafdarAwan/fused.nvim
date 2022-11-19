local M = {}

M.load_hl = function(hl, cp)
    -- code action
    hl("LspSagaCodeActionTitle", { fg = cp.magenta, bold = true })
    hl("LspSagaCodeActionBorder", { link = "FloatBorder" })
    hl("LspSagaCodeActionTrunCateLine", { link = "LspSagaCodeActionBorder" })
    hl("LspSagaCodeActionContent", { fg = cp.warn, bold = true })
    -- finder
    hl("LspSagaLspFinderBorder", { link = "FloatBorder" })
    hl("LspSagaAutoPreview", { link = "FloatBorder" })
    hl("LspSagaFinderSelection", { fg = cp.selection, bold = true })
    hl("TargetFileName", { fg = cp.string_color })
    hl("FinderParam", { fg = cp.warn, bold = true })
    hl("FinderVirtText", { fg = cp.white })
    hl("DefinitionsIcon", { fg = cp.radish_pink })
    hl("Definitions", { fg = cp.light_pink, bold = true })
    hl("DefinitionCount", { link = "Title" })
    hl("ReferencesIcon", { fg = cp.light_pink })
    hl("References", { fg = cp.white, bold = true })
    hl("ReferencesCount", { link = "Title" })
    hl("ImplementsIcon", { fg = cp.light_pink })
    hl("Implements", { fg = cp.white, bold = true })
    hl("ImplementsCount", { link = "Title" })
    -- --finder spinner
    hl("FinderSpinnerBorder", { link = "FloatBorder" })
    hl("FinderSpinnerTitle", { fg = cp.warn, bold = true })
    hl("FinderSpinner", { fg = cp.dyellow, bold = true })
    hl("FinderPreviewSearch", { link = "Search" })
    -- definition
    hl("DefinitionBorder", { link = "FloatBorder" })
    hl("DefinitionArrow", { fg = cp.err })
    hl("DefinitionSearch", { link = "Search" })
    hl("DefinitionFile", { bg = cp.blue })
    -- hover
    hl("LspSagaHoverBorder", { link = "FloatBorder" })
    hl("LspSagaHoverTrunCateLine", { link = "LspSagaHoverBorder" })
    -- rename
    hl("LspSagaRenameBorder", { link = "FloatBorder" })
    hl("LspSagaRenameMatch", { link = "Search" })
    -- -- diagnostic
    hl("LspSagaDiagnosticSource", { link = "Visual" })
    hl("LspSagaDiagnosticError", { link = "DiagnosticError" })
    hl("LspSagaDiagnosticWarn", { link = "DiagnosticWarn" })
    hl("LspSagaDiagnosticInfo", { link = "DiagnosticInfo" })
    hl("LspSagaDiagnosticHint", { link = "DiagnosticHint" })
    hl("LspSagaErrorTrunCateLine", { link = "DiagnosticError" })
    hl("LspSagaWarnTrunCateLine", { link = "DiagnosticWarn" })
    hl("LspSagaInfoTrunCateLine", { link = "DiagnosticInfo" })
    hl("LspSagaHintTrunCateLine", { link = "DiagnosticHint" })
    hl("LspSagaDiagnosticBorder", { link = "FloatBorder" })
    hl("LspSagaDiagnosticHeader", { fg = cp.magenta })
    hl("DiagnosticQuickFix", { fg = cp.green, bold = true })
    hl("DiagnosticMap", { fg = cp.magenta })
    hl("DiagnosticLineCol", { fg = cp.white })
    hl("LspSagaDiagnosticTruncateLine", { link = "LspSagaDiagnosticBorder" })
    hl("ColInLineDiagnostic", { link = "Comment" })
    -- signture help
    hl("LspSagaSignatureHelpBorder", { link = "FloatBorder" })
    hl("LspSagaShTrunCateLine", { link = "LspSagaSignatureHelpBorder" })
    -- lightbulb
    hl("LspSagaLightBulb", { link = "DiagnosticSignHint" })
    -- shadow
    hl("SagaShadow", { fg = "black" })
    -- float
    hl("LspSagaBorderTitle", { link = "Title" })
    -- Outline
    hl("LSOutlinePreviewBorder", { link = "FloatBorder" })
    hl("OutlineIndentEvn", { fg = cp.pink })
    hl("OutlineIndentOdd", { fg = cp.dyellow })
    hl("OutlineFoldPrefix", { fg = cp.magenta })
    hl("OutlineDetail", { fg = cp.white })
    -- all floatwindow of lspsaga
    hl("LspFloatWinNormal", { link = "Normal" })
    -- <++
end
return M
