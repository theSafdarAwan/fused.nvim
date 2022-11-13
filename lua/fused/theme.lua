local M = {}
local vim = vim
local Colors = require("fused.pallete")
-- TODO: lsp utilities borders

M.set_colors = function()
    vim.opt.background = "dark"

    local hl = function(highlightGroup, opts)
        vim.api.nvim_set_hl(0, highlightGroup, opts)
    end

    hl("guibg", {
        bg = "None",
    })

    hl("netrwDir", {
        fg = "#5eacd3",
    })
    -- nvim theme
    -- ++>
    hl("Comment", { fg = Colors.color_9 }) -- any comment
    hl("ColorColumn", { bg = Colors.dark_blue }) -- used for the columns set with 'colorcolumn'
    hl("Conceal", { fg = Colors.color_22_one }) -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- TODO:	 play with cursor color
    hl("Cursor", { fg = Colors.color_1, bg = Colors.bg }) -- character under the cursor
    hl("lCursor", { fg = Colors.color_14_drac, bg = Colors.color_5 }) -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    hl("CursorIM", { fg = Colors.color_1, bg = Colors.bg }) -- like Cursor, but used when in IME mode |CursorIM|
    hl("CursorColumn", { bg = Colors.color_2 }) -- Screen-column at the cursor, when 'cursorcolumn' is set.
    hl("CursorLine", { bg = Colors.color_2 }) -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    hl("Directory", { fg = Colors.color_15 }) -- directory names (and other special names in listings)
    hl("DiffAdd", { fg = Colors.vc_add }) -- diff mode: Added line |diff.txt|
    hl("DiffChange", { fg = Colors.vc_change }) -- diff mode: Changed line |diff.txt|
    hl("DiffDelete", { fg = Colors.vc_remove }) -- diff mode: Deleted line |diff.txt|
    -- DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    hl("EndOfBuffer", { fg = Colors.color_3 }) -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    hl("TermCursor", { fg = Colors.fg, bg = Colors.fg }) -- cursor in a focused terminal
    hl("TermCursorNC", { fg = Colors.fg, bg = Colors.fg }) -- cursor in an unfocused terminal
    hl("ErrorMsg", { fg = Colors.error_red, bg = Colors.bg, bold = true }) -- error messages on the command line
    hl("VertSplit", { fg = Colors.color_13 }) -- the column separating vertically split windows
    hl("Folded", { fg = Colors.color_8, bg = Colors.color_1 }) -- line used for closed folds
    hl("FoldColumn", { fg = Colors.color_8, bg = Colors.color_1 }) -- 'foldcolumn'
    hl("SignColumn", { bg = Colors.bg }) -- column where |signs| are displayed
    hl("IncSearch", { bg = Colors.color_4 }) -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    hl(
        "Substitute",
        { fg = Colors.error_red, bg = Colors.color_2, underline = true }
    ) -- |:substitute| replacement text highlighting
    hl("LineNr", { fg = Colors.color_8 }) -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    hl("CursorLineNr", { fg = Colors.color_20, bold = true }) -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    hl("MatchParen", { bg = Colors.color_2, bold = true, underline = true }) -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    hl("ModeMsg", { fg = Colors.fg, bg = Colors.bg }) -- 'showmode' message (e.g., "-- INSERT -- ")
    hl(
        "MsgArea",
        { fg = Colors.color_5, bg = Colors.transparent and "NONE" or Colors.bg }
    ) -- Area for messages and cmdline
    hl("MsgSeparator", { fg = Colors.fg, bg = Colors.bg }) -- Separator for scrolled messages, `msgsep` flag of 'display'
    hl("MoreMsg", { fg = Colors.fg, bg = Colors.bg }) -- |more-prompt|
    hl("NonText", { fg = Colors.color_4 }) -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    hl(
        "Normal",
        { fg = Colors.fg, bg = Colors.transparent and "NONE" or Colors.bg }
    ) -- normal text
    hl("NormalFloat", { fg = Colors.string, bg = Colors.bg }) -- Normal text in floating windows.
    hl("FloatBorder", { fg = Colors.color_2 })
    hl("NormalBorder", { fg = Colors.string, bg = Colors.bg }) -- Normal text in floating windows.
    -- NormalNC({ fg = color.fg, bg = Config.transparent_background and "NONE" or color.bg }), -- normal text in non-current windows
    hl("Pmenu", { fg = Colors.color_25, bg = Colors.bg }) -- Popup menu: normal item.
    hl("PmenuSel", { bg = Colors.color_2 }) -- Popup menu: selected item.
    hl("PmenuSbar", { bg = Colors.color_8 }) -- Popup menu: scrollbar.
    hl("PmenuThumb", { bg = Colors.color_20 }) -- Popup menu: Thumb of the scrollbar.
    hl("Question", { fg = Colors.color_20 }) -- |hit-enter| prompt and yes/no questions
    hl("QuickFixLine", { bg = Colors.color_5 }) -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    hl("Search", { bg = Colors.color_4 }) -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    hl("SpecialKey", { fg = Colors.color_23, bold = true }) -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    hl("SpellBad", { fg = Colors.error_red, underline = true }) -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    hl("SpellCap", { fg = Colors.color_18, underline = true }) -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    hl("SpellLocal", { fg = Colors.color_23, underline = true }) -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    hl("SpellRare", { fg = Colors.color_16, underline = true }) -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    hl("StatusLine", { bg = Colors.bg }) -- status line of current window
    hl("StatusLineNC", { bg = Colors.color_2 }) -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    hl("TabLine", { fg = Colors.color_8, bg = Colors.color_1 }) -- tab pages line, not active tab page label
    hl("TabLineFill", { fg = Colors.fg, bg = Colors.color_4 }) -- tab pages line, where there are no labels
    hl("TabLineSel", { fg = Colors.fg, bg = Colors.color_4 }) -- tab pages line, active tab page label
    hl("Title", { fg = Colors.color_21, bold = true }) -- titles for output from ":set all", ":autocmd" etc.
    hl("Visual", { bg = Colors.color_2 }) -- Visual mode selection
    hl("VisualNOS", { bg = Colors.error_red }) -- Visual mode selection when vim is "Not Owning the Selection".
    hl("WarningMsg", { fg = Colors.error_red, bg = Colors.color_5 }) -- warning messages
    hl("Whitespace", { fg = Colors.color_3 }) -- "nbsp", "space", "tab" and "trail" in 'listchars'
    hl("WildMenu", { fg = Colors.color_7, bg = Colors.color_16 }) -- current match in 'wildmenu' completion
    -- custom
    hl("DamianConway", { bg = Colors.color_2 }) -- this is a custom highlight group
    -- <++

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.
    -- Nvim Syntax Highlights
    -- ++>
    hl("Constant", { link = "@constant" }) -- (preferred) any constant
    hl("String", { link = "@string" }) --   a string constant: "this is a string"
    hl("Character", { link = "@character" }) --  a character constant: 'c', '\n'
    hl("Number", { link = "@number" }) --   a number constant: 234, 0xff
    hl("Boolean", { link = "@boolean" }) --  a boolean constant: TRUE, false
    hl("Float", { link = "@float" }) --    a floating point constant: 2.3e10
    --
    hl("Identifier", { fg = Colors.color_21 }) -- (preferred) any variable name
    hl("Function", { link = "@function" }) -- function name (also: methods for classes)
    --
    hl("Statement", { fg = Colors.color_23 }) -- (preferred) any statement
    hl("Conditional", { fg = Colors.color_23 }) --  if, then, else, endif, switch, etc.
    hl("Repeat", { fg = Colors.color_23 }) --   for, do, while, etc.
    hl("Label", { link = "@label" }) --    case, default, etc.
    hl("Operator", { link = "@operator" }) -- "sizeof", "+", "*", etc.
    hl("Keyword", { link = "@keyword" }) --  any other keyword
    hl("Exception", { link = "@exception" }) --  try, catch, throw
    --
    hl("PreProc", { fg = Colors.color_27 }) -- (preferred) generic Preprocessor
    hl("Include", { fg = Colors.color_23 }) --  preprocessor #include
    hl("Define", { fg = Colors.color_23 }) --   preprocessor #define
    hl("Macro", { fg = Colors.color_23 }) --    same as Define
    hl("PreCondit", { link = "@conditional" }) --  preprocessor #if, #else, #endif, etc.
    --
    hl("Type", { link = "@type" }) -- (preferred) int, long, char, etc.
    hl("StorageClass", { fg = Colors.color_21 }) -- static, register, volatile, etc.
    hl("Structure", { fg = Colors.color_23 }) --  struct, union, enum, etc.
    hl("Typedef", { fg = Colors.color_23 }) --  A typedef
    --
    hl("Special", { fg = Colors.color_23 }) -- (preferred) any special symbol
    hl("SpecialChar", { fg = Colors.color_15 }) --  special character in a constant
    hl("Tag", { fg = Colors.color_22_one }) --    you can use CTRL-] on this
    hl("Delimiter", { fg = Colors.color_16 }) --  character that needs attention
    hl("SpecialComment", { fg = Colors.color_5 }) -- special things inside a comment
    hl("Debug", { fg = Colors.color_22_one }) --    debugging statements
    -- <++

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    hl("Error", { fg = Colors.error_red, bg = Colors.bg, bold = true }) -- (preferred) any erroneous construct

    hl("Todo", { fg = Colors.color_20, bg = Colors.bg, bold = true }) -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    -- Lsp Conf
    -- ++>
    hl("LspReferenceText", { bg = Colors.color_22_one, bold = true }) -- used for highlighting "text" references
    hl("LspReferenceRead", { bg = Colors.color_22_one, bold = true }) -- used for highlighting "read" references
    hl("LspReferenceWrite", { bg = Colors.color_22_one, bold = true }) -- used for highlighting "write" references

    hl("DiagnosticVirtualTextError", { fg = Colors.error_red })
    hl("DiagnosticVirtualTextWarn", { link = "@warning" })
    hl("DiagnosticVirtualTextHint", { fg = Colors.fl_color_6 })
    hl("DiagnosticVirtualTextInfo", { fg = Colors.color_21 })

    hl("DiagnosticSignError", { fg = Colors.error_red })
    hl("DiagnosticSignWarn", { link = "@warning" })
    hl("DiagnosticSignInfo", { fg = Colors.color_21 })
    hl("DiagnosticSignHint", { fg = Colors.fl_color_6 })

    hl(
        "DiagnosticUnderlineError",
        -- { fg = Colors.error_red, bg = Colors.color_2, underline = true }
        { underline = true }
    )
    hl(
        "DiagnosticUnderlineWarn",
        -- { fg = Colors.color_20, bg = Colors.color_2, underline = true }
        { underline = true }
    )
    hl(
        "DiagnosticUnderlineInfo",
        -- { fg = Colors.color_21, bg = Colors.color_2, underline = true }
        { underline = true }
    )
    hl(
        "DiagnosticUnderlineHint",
        -- { fg = Colors.fl_color_6, bg = Colors.color_2, underline = true }
        { underline = true }
    )
    -- <++

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.
    -- (TreeSitter)
    -- ++>
    hl("@spell", { bold = false })
    hl("@annotation", { fg = Colors.color_15 }) -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    hl("@attribute", { fg = Colors.color_21 }) -- (unstable) TODO: docs
    hl("@boolean", { fg = Colors.color_20 }) -- For booleans.
    hl("@character", { fg = Colors.color_15 }) -- For characters.
    hl("@comment", { fg = Colors.color_5, italic = true }) -- For comment blocks.
    hl("@constructor", { fg = Colors.color_18 }) -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    hl("@conditional", { fg = Colors.color_20 }) -- For keywords related to conditionnals.
    hl("@constant", { fg = Colors.color_17 }) -- For constants
    hl("@const.builtin", { fg = Colors.color_18 }) -- For constant that are built in the language: `nil` in Lua.
    hl("@const.macro", { fg = Colors.color_21 }) -- For constants that are defined by macros: `NULL` in C.
    hl("@error", { fg = Colors.error_red }) -- For syntax/parser errors.
    hl("@warning", { fg = Colors.color_20 }) -- For syntax/parser errors.
    hl("@exception", { fg = Colors.color_20 }) -- For exception related keywords.
    hl("@field", { fg = Colors.color_21 }) -- For fields.
    hl("@float", { fg = Colors.color_20 }) -- For floats.
    hl("@function", { fg = Colors.color_16 }) -- For function (calls and definitions).
    hl("@function.builtin", { fg = Colors.color_14_one }) -- For builtin functions: `table.insert` in Lua.
    hl("@function.macro", { fg = Colors.color_27 }) -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    hl("@include", { fg = Colors.color_14_drac, italic = true }) -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    hl("@keyword", { fg = Colors.color_24 }) -- For keywords that don't fall in previous categories.
    hl("@keyword.function", { fg = Colors.color_22_one, bold = true }) -- For keywords used to define a fuction.
    hl("@keyword.operator", { fg = Colors.color_24 }) -- For keywords used to define a fuction.
    hl("@keyword.return", { fg = Colors.color_22_drac, bold = true }) -- For keywords used to define a fuction.
    hl("@label", { fg = Colors.color_22_one }) -- For labels: `label:` in C and `:label:` in Lua.
    hl("@method", { fg = Colors.color_15 }) -- For method calls and definitions.
    hl("@namespace", { fg = Colors.color_24 }) -- For identifiers referring to modules and namespaces.
    hl("@number", { fg = Colors.color_18 }) -- For all numbers
    hl("@operator", { fg = Colors.color_27 }) -- For any operator: `+`, but also `->` and `*` in C.
    hl("@parameter", { fg = Colors.color_20 }) -- For parameters of a function.
    hl("@parameter.reference", { fg = Colors.color_20 }) -- For references to parameters of a function.
    hl("@property", { fg = Colors.color_29 }) -- Same as `TSField`.
    hl("@punctuation.delimiter", { fg = Colors.fg }) -- For delimiters ie: `.`
    hl("@punctuation.bracket", { fg = Colors.fg }) -- For brackets and parens.
    hl("@punctuation.special", { fg = Colors.color_23 }) -- For special punctutation that does not fall in the catagories before.
    hl("@repeat", { fg = Colors.color_23 }) -- For keywords related to loops.
    hl("@string", { fg = Colors.string_color }) -- For strings.
    hl("@string.regex", { fg = Colors.color_14_drac }) -- For regexes.
    hl("@string.escape", { fg = Colors.color_22_one }) -- For escape characters within a string.
    hl("@symbol", { fg = Colors.color_21 }) -- For identifiers referring to symbols or atoms.
    hl("@type", { fg = Colors.color_17 }) -- For types.
    hl("@type.builtin", { fg = Colors.color_17 }) -- For builtin types.
    hl("@variable", { fg = Colors.fg }) -- Any variable name that does not have another highlight.
    hl("@variable.builtin", { fg = Colors.color_23 }) -- Variable names that are defined by the languages, like `this` or `self`.
    --
    hl("@tag", { fg = Colors.color_22_one }) -- Tags like html tag names.
    hl("@tag.attribute", { fg = Colors.color_20 }) -- Tags like html tag names.
    hl("@tag.delimiter", { fg = Colors.color_9 }) -- Tag delimiter like `<` `>` `/`
    hl("@text", { fg = Colors.fg }) -- For strings considered text in a markup language.
    hl("@emphasis", { italic = true }) -- For text to be represented with emphasis.
    hl("@underline", { underline = true }) -- For text to be represented with an underline.
    -- TSStrike             {};    -- For strikethrough text.
    hl("@title", { fg = Colors.color_14_drac, bold = true }) -- Text that is part of a title.
    hl("@literal", { fg = Colors.color_26 }) -- Literal text.
    hl("@uRI", { fg = Colors.color_28, underline = true }) -- Any URI like a link or email.
    -- <++

    --> (CSS)
    -- ++>
    hl("cssTsProperty", { fg = Colors.color_27 })
    hl("cssTsOperator", { fg = Colors.color_14_drac })
    -- <++

    --> (LSP saga)
    -- ++>
    -- code action
    hl("LspSagaCodeActionTitle", { fg = Colors.color_17, bold = true })
    hl("LspSagaCodeActionBorder", { link = "FloatBorder" })
    hl("LspSagaCodeActionTrunCateLine", { link = "LspSagaCodeActionBorder" })
    hl("LspSagaCodeActionContent", { fg = Colors.color_23, bold = true })
    -- finder
    hl("LspSagaLspFinderBorder", { link = "FloatBorder" })
    hl("LspSagaAutoPreview", { link = "FloatBorder" })
    hl("LspSagaFinderSelection", { fg = Colors.color_25, bold = true })
    hl("TargetFileName", { fg = Colors.string_color })
    hl("FinderParam", { fg = Colors.color_20, bold = true })
    hl("FinderVirtText", { fg = Colors.color_3 })
    hl("DefinitionsIcon", { fg = Colors.color_23 })
    hl("Definitions", { fg = Colors.color_25, bold = true })
    hl("DefinitionCount", { link = "Title" })
    hl("ReferencesIcon", { fg = Colors.color_23 })
    hl("References", { fg = Colors.color_25, bold = true })
    hl("ReferencesCount", { link = "Title" })
    hl("ImplementsIcon", { fg = Colors.color_23 })
    hl("Implements", { fg = Colors.color_25, bold = true })
    hl("ImplementsCount", { link = "Title" })
    -- --finder spinner
    hl("FinderSpinnerBorder", { link = "FloatBorder" })
    hl("FinderSpinnerTitle", { fg = Colors.color_20, bold = true })
    hl("FinderSpinner", { fg = Colors.color_17, bold = true })
    hl("FinderPreviewSearch", { link = "Search" })
    -- definition
    hl("DefinitionBorder", { link = "FloatBorder" })
    hl("DefinitionArrow", { fg = "#ad475f" })
    hl("DefinitionSearch", { link = "Search" })
    hl("DefinitionFile", { bg = "#151838" })
    -- hover
    hl("LspSagaHoverBorder", { link = "FloatBorder" })
    hl("LspSagaHoverTrunCateLine", { link = "LspSagaHoverBorder" })
    -- rename
    hl("LspSagaRenameBorder", { link = "FloatBorder" })
    hl("LspSagaRenameMatch", { link = "Search" })
    -- -- diagnostic
    hl("LspSagaDiagnosticSource", { link = "Comment" })
    hl("LspSagaDiagnosticError", { link = "DiagnosticError" })
    hl("LspSagaDiagnosticWarn", { link = "DiagnosticWarn" })
    hl("LspSagaDiagnosticInfo", { link = "DiagnosticInfo" })
    hl("LspSagaDiagnosticHint", { link = "DiagnosticHint" })
    hl("LspSagaErrorTrunCateLine", { link = "DiagnosticError" })
    hl("LspSagaWarnTrunCateLine", { link = "DiagnosticWarn" })
    hl("LspSagaInfoTrunCateLine", { link = "DiagnosticInfo" })
    hl("LspSagaHintTrunCateLine", { link = "DiagnosticHint" })
    hl("LspSagaDiagnosticBorder", { link = "FloatBorder" })
    hl("LspSagaDiagnosticHeader", { fg = "#afd700" })
    hl("DiagnosticQuickFix", { fg = "#4dd158", bold = true })
    hl("DiagnosticMap", { fg = "#cf80ce" })
    hl("DiagnosticLineCol", { fg = "#73797e" })
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
    hl("LspSagaBorderTitle", { link = "FloatBorder" })
    -- Outline
    hl("LSOutlinePreviewBorder", { link = "FloatBorder" })
    hl("OutlineIndentEvn", { fg = "#c955ae" })
    hl("OutlineIndentOdd", { fg = "#b8733e" })
    hl("OutlineFoldPrefix", { fg = "#bf4537" })
    hl("OutlineDetail", { fg = "#73797e" })
    -- all floatwindow of lspsaga
    hl("LspFloatWinNormal", { link = "Normal" })
    -- <++

    --> (Telescope)
    -- ++>
    hl("TelescopeSelection", { bg = Colors.color_2 })
    hl("TelescopeSelectionCaret", { fg = Colors.color_20 })
    hl("TelescopeMultiSelection", { fg = Colors.color_8 })
    hl("TelescopeMatching", { fg = Colors.color_14_drac })
    hl("TelescopePromptPrefix", { fg = Colors.color_18 })
    hl("TelescopeBorder", { fg = Colors.color_3 })
    hl("TelescopePromptBorder", { fg = Colors.color_3 })
    hl("TelescopeResultsBorder", { fg = Colors.color_3 })
    hl("TelescopePreviewBorder", { fg = Colors.color_3 })
    hl("TelescopeTitle", { fg = Colors.color_23, bold = true })
    hl("TelescopePromptTitle", { fg = Colors.color_18, bold = true })
    hl("TelescopeResultsTitle", { fg = Colors.color_15, bold = true })
    hl("TelescopePreviewTitle", { fg = Colors.color_23, bold = true })
    -- <++

    -- (NvimTree)
    -- ++>
    hl("NvimTreeGitDirty", { fg = Colors.fl_color_13 })
    hl("NvimTreeGitStaged", { fg = Colors.fl_color_1 })
    hl("NvimTreeGitNew", { fg = Colors.fl_color_13 })
    hl("NvimTreeGitDeleted", { fg = Colors.fl_color_13 })
    hl("NvimTreeRootFolder", { fg = Colors.fl_color_7 })
    hl("NvimTreeIndentMarker", { fg = Colors.fl_color_10 })
    hl("NvimTreeSymlink", { fg = Colors.color_28 })
    hl("NvimTreeFolderName", { fg = Colors.fl_color_12 })
    hl("NvimTreeFolderIcon", { link = "NvimTreeFolderName" })
    hl("NvimTreeEmptyFolderName", { fg = Colors.color_25 })
    hl("NvimTreeOpenedFolderName", { link = "NvimTreeFolderName" })
    hl("NvimTreeExecFile", { fg = Colors.color_14_drac })
    hl("NvimtreeFileStaged", { fg = Colors.color_14_drac })
    -- NvimTreeGitMerge
    -- NvimTreeFileDirty
    -- NvimTreeFileStaged
    -- NvimTreeGitRenamed
    -- NvimTreeFileMerge
    -- NvimTreeFileRenamed
    -- NvimTreeFileNew
    -- NvimTreeFileDeleted
    -- NvimTreeOpenedFile
    -- NvimTreeSpecialFile
    -- NvimTreeImageFile
    -- NvimTreeMarkdownFile
    -- NvimTreeLicenseIcon
    -- NvimTreeYamlIcon
    -- NvimTreeTomlIcon
    -- NvimTreeGitignoreIcon
    -- NvimTreeJsonIcon
    -- NvimTreeLuaIcon
    -- NvimTreePythonIcon
    -- NvimTreeShellIcon
    -- NvimTreeJavascriptIcon
    -- NvimTreeCIcon
    -- NvimTreeReactIcon
    -- NvimTreeHtmlIcon
    -- NvimTreeRustIcon
    -- NvimTreeVimIcon
    -- NvimTreeTypescriptIcon
    -- <++

    --> TODO:(Trouble)
    -- ++>
    -- TroubleCount
    -- TroubleError
    -- TroubleNormal
    -- TroubleTextInformation
    -- TroubleSignWarning
    -- TroubleLocation
    -- TroubleWarning
    -- TroublePreview
    -- TroubleTextError
    -- TroubleSignInformation
    -- TroubleIndent
    -- TroubleSource
    -- TroubleSignHint
    -- TroubleSignOther
    -- TroubleFoldIcon
    -- TroubleTextWarning
    -- TroubleCode
    -- TroubleInformation
    -- TroubleSignError
    -- TroubleFile
    -- TroubleHint
    -- TroubleTextHint
    -- TroubleText
    -- <++

    --> (cmp)
    -- ++>
    -- TODO: CmpItemKind%
    --> Cmp
    hl("CmpItemAbbr", { fg = Colors.color_25 })
    hl("CmpItemAbbrDeprecated", { fg = Colors.color_9 })
    hl("CmpItemAbbrMatch", { fg = Colors.color_14_drac })
    hl("CmpItemAbbrMatchFuzzy", { fg = Colors.color_20 })
    hl("CmpItemMenu", { fg = Colors.color_8 })
    hl("CmpItemKindSnippet", { fg = Colors.vc_add })
    -- Item kind
    hl("CmpItemKindText", { link = "@text" })
    hl("CmpItemKindFunction", { link = "@function" })
    hl("CmpItemKindKeyword", { link = "@keyword" })
    hl("CmpItemKindField", { link = "@field" })
    hl("CmpItemKindVariable", { link = "@variable" })
    hl("CmpItemKindEnum", { link = "CmpItemKindText" })
    -- <++

    --> (IndentBlankline)
    -- ++>
    hl("IndentBlanklineChar", { fg = Colors.color_2 })
    hl("IndentBlanklineSpaceChar", { fg = Colors.color_2 })
    hl("IndentBlanklineSpaceCharBlankline", { fg = Colors.color_2 })
    hl("IndentBlanklineContextChar", { fg = Colors.color_5 })
    hl("IndentBlanklineContextSpaceChar", { fg = Colors.color_2 })
    hl("IndentBlanklineContextStart", { fg = Colors.color_2 })
    -- <++

    --> (Neorg)
    -- ++>
    hl("@neorg.headings.2.title", { fg = Colors.color_27 })
    hl("@neorg.headings.2.prefix", { link = "@neorg.headings.2.title" })
    hl("@neorg.headings.3.title", { fg = Colors.color_15 })
    hl("@neorg.headings.3.prefix", { link = "@neorg.headings.3.title" })
    hl("@neorg.markup.italic", { italic = true })
    -- Links
    hl(
        "@neorg.links.location.heading.1",
        { underline = true, fg = Colors.color_21 }
    )
    hl(
        "@neorg.links.location.heading.2",
        { underline = true, fg = Colors.color_27 }
    )
    hl(
        "@neorg.links.location.heading.3",
        { underline = true, fg = Colors.color_15 }
    )
    hl(
        "@neorg.links.location.heading.4",
        { underline = true, fg = Colors.string_color }
    )
    hl(
        "@neorg.links.location.heading.5",
        { underline = true, fg = Colors.color_22_one }
    )
    hl(
        "@neorg.links.location.heading.6",
        { underline = true, fg = Colors.color_25 }
    )
    -- neorg unordered and ordered lists
    hl("@neorg.lists.unordered.1.content", { link = "Normal" })
    local neorg_ulp = "@neorg.lists.unordered.1.content"
    hl("@neorg.lists.unordered.2.content", { link = neorg_ulp })
    hl("@neorg.lists.unordered.3.content", { link = neorg_ulp })
    hl("@neorg.lists.unordered.4.content", { link = neorg_ulp })
    hl("@neorg.lists.unordered.5.content", { link = neorg_ulp })
    hl("@neorg.lists.unordered.6.content", { link = neorg_ulp })
    hl("@neorg.lists.ordered.1.content", { link = neorg_ulp })
    hl("@neorg.lists.ordered.2.content", { link = neorg_ulp })
    hl("@neorg.lists.ordered.3.content", { link = neorg_ulp })
    hl("@neorg.lists.ordered.4.content", { link = neorg_ulp })
    hl("@neorg.lists.ordered.5.content", { link = neorg_ulp })
    hl("@neorg.lists.ordered.6.content", { link = neorg_ulp })
    -- neorge markup
    hl("@neorg.markup.spoiler", { link = "@error" })
    hl("@neorg.markup.superscript", { fg = Colors.color_17 })
    hl("@neorg.links.location.generic", { fg = Colors.color_27 })
    hl(
        "@neorg.links.location.generic.prefix",
        { link = "@neorg.links.location.generic" }
    )
    -- neorg quotes
    local neorg_quotes = { fg = Colors.color_9, bg = "NONE", italic = true }
    hl("@neorg.quotes.1.content", neorg_quotes)
    hl("@neorg.quotes.2.content", neorg_quotes)
    hl("@neorg.quotes.3.content", neorg_quotes)
    hl("@neorg.quotes.4.content", neorg_quotes)
    hl("@neorg.quotes.5.content", neorg_quotes)
    hl("@neorg.quotes.6.content", neorg_quotes)
    hl("@neorg.quotes.7.content", neorg_quotes)
    hl("@neorg.codke", neorg_quotes)
    -- neorg todo-done
    hl("@neorg.todo_items.done.1", { fg = Colors.color_21 })
    local ntid = "@neorg.todo_items.done.1"
    hl("@neorg.todo_items.done.2", { link = ntid })
    hl("@neorg.todo_items.done.3", { link = ntid })
    hl("@neorg.todo_items.done.4", { link = ntid })
    hl("@neorg.todo_items.done.5", { link = ntid })
    hl("@neorg.todo_items.done.6", { link = ntid })
    -- neorg todo-done
    hl("@neorg.todo_items.undone.1", { fg = Colors.color_17 })
    local ntiu = "@neorg.todo_items.undone.1"
    hl("@neorg.todo_items.undone.2", { link = ntiu })
    hl("@neorg.todo_items.undone.3", { link = ntiu })
    hl("@neorg.todo_items.undone.4", { link = ntiu })
    hl("@neorg.todo_items.undone.5", { link = ntiu })
    hl("@neorg.todo_items.undone.6", { link = ntiu })
    -- neorg uncertain
    hl("@neorg.todo_items.uncertain.1", { fg = Colors.color_18 })
    local ntiuc = "@neorg.todo_items.uncertain.1"
    hl("@neorg.todo_items.uncertain.2", { link = ntiuc })
    hl("@neorg.todo_items.uncertain.3", { link = ntiuc })
    hl("@neorg.todo_items.uncertain.4", { link = ntiuc })
    hl("@neorg.todo_items.uncertain.5", { link = ntiuc })
    hl("@neorg.todo_items.uncertain.6", { link = ntiuc })
    -- neorg pending
    hl("@neorg.todo_items.pending.1", { fg = Colors.color_14_drac })
    local ntip = "@neorg.todo_items.pending.1"
    hl("@neorg.todo_items.pending.2", { link = ntip })
    hl("@neorg.todo_items.pending.3", { link = ntip })
    hl("@neorg.todo_items.pending.4", { link = ntip })
    hl("@neorg.todo_items.pending.5", { link = ntip })
    hl("@neorg.todo_items.pending.6", { link = ntip })
    -- neorg urgent
    hl("@neorg.todo_items.urgent.1", { fg = Colors.error_red })
    local ntiur = "@neorg.todo_items.urgent.1"
    hl("@neorg.todo_items.urgent.2", { link = ntiur })
    hl("@neorg.todo_items.urgent.3", { link = ntiur })
    hl("@neorg.todo_items.urgent.4", { link = ntiur })
    hl("@neorg.todo_items.urgent.5", { link = ntiur })
    hl("@neorg.todo_items.urgent.6", { link = ntiur })
    -- neorg on_hold
    hl("@neorg.todo_items.on_hold.1", { fg = Colors.color_15 })
    local ntio = "@neorg.todo_items.on_hold.1"
    hl("@neorg.todo_items.on_hold.2", { link = ntio })
    hl("@neorg.todo_items.on_hold.3", { link = ntio })
    hl("@neorg.todo_items.on_hold.4", { link = ntio })
    hl("@neorg.todo_items.on_hold.5", { link = ntio })
    hl("@neorg.todo_items.on_hold.6", { link = ntio })
    -- <++

    --> (Harpoon)
    -- ++>
    hl("HarpoonBorder", { link = "TelescopeBorder" })
    hl("HarpoonWindow", { link = "@string" })
    -- <++
end

return M

-- TODO: you know what to do

--
-- ["annotation"] = "TSAnnotation",
--
--  ["attribute"] = "TSAttribute",
--
--  ["boolean"] = "TSBoolean",
--
--  ["character"] = "TSCharacter",
--  ["character.special"] = "TSCharacterSpecial",
--
--  ["comment"] = "TSComment",
--
--  ["conditional"] = "TSConditional",
--
--  ["constant"] = "TSConstant",
--  ["constant.builtin"] = "TSConstBuiltin",
--  ["constant.macro"] = "TSConstMacro",
--
--  ["constructor"] = "TSConstructor",
--
--  ["debug"] = "TSDebug",
--  ["define"] = "TSDefine",
--
--  ["error"] = "TSError",
--  ["exception"] = "TSException",
--
--  ["field"] = "TSField",
--
--  ["float"] = "TSFloat",
--
--  ["function"] = "TSFunction",
--  ["function.call"] = "TSFunctionCall",
--  ["function.builtin"] = "TSFuncBuiltin",
--  ["function.macro"] = "TSFuncMacro",
--
--  ["include"] = "TSInclude",
--
--  ["keyword"] = "TSKeyword",
--  ["keyword.function"] = "TSKeywordFunction",
--  ["keyword.operator"] = "TSKeywordOperator",
--  ["keyword.return"] = "TSKeywordReturn",
--
--  ["label"] = "TSLabel",
--
--  ["method"] = "TSMethod",
--  ["method.call"] = "TSMethodCall",
--
--  ["namespace"] = "TSNamespace",
--
--  ["none"] = "TSNone",
--  ["number"] = "TSNumber",
--
--  ["operator"] = "TSOperator",
--
--  ["parameter"] = "TSParameter",
--  ["parameter.reference"] = "TSParameterReference",
--
--  ["preproc"] = "TSPreProc",
--
--  ["property"] = "TSProperty",
--
--  ["punctuation.delimiter"] = "TSPunctDelimiter",
--  ["punctuation.bracket"] = "TSPunctBracket",
--  ["punctuation.special"] = "TSPunctSpecial",
--
--  ["repeat"] = "TSRepeat",
--
--  ["storageclass"] = "TSStorageClass",
--
--  ["string"] = "TSString",
--  ["string.regex"] = "TSStringRegex",
--  ["string.escape"] = "TSStringEscape",
--  ["string.special"] = "TSStringSpecial",
--
--  ["symbol"] = "TSSymbol",
--
--  ["tag"] = "TSTag",
--  ["tag.attribute"] = "TSTagAttribute",
--  ["tag.delimiter"] = "TSTagDelimiter",
--
--  ["text"] = "TSText",
--  ["text.strong"] = "TSStrong",
--  ["text.emphasis"] = "TSEmphasis",
--  ["text.underline"] = "TSUnderline",
--  ["text.strike"] = "TSStrike",
--  ["text.title"] = "TSTitle",
--  ["text.literal"] = "TSLiteral",
--  ["text.uri"] = "TSURI",
--  ["text.math"] = "TSMath",
--  ["text.reference"] = "TSTextReference",
--  ["text.environment"] = "TSEnvironment",
--  ["text.environment.name"] = "TSEnvironmentName",
--
--  ["text.note"] = "TSNote",
--  ["text.warning"] = "TSWarning",
--  ["text.danger"] = "TSDanger",
--
--  ["todo"] = "TSTodo",
--
--  ["type"] = "TSType",
--  ["type.builtin"] = "TSTypeBuiltin",
--  ["type.qualifier"] = "TSTypeQualifier",
--  ["type.definition"] = "TSTypeDefinition",
--
--  ["variable"] = "TSVariable",
--  ["variable.builtin"] = "TSVariableBuiltin",
