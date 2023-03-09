--- Template for creating themes for fused.nvim

--- Colors table for theme flavour used by the Theme table.
---@table Colors
---@return table
local colors = {
	-- colors
}

local M = {}
--- table of colors that will be used by the groups/* modules.
---@table Theme
M.theme = {
	editor = {
		line_nr = {
			active = {
				fg = nil,
				bg = nil,
			},
			in_active = {
				fg = nil,
				bg = nil,
			},
		},
		statusline = {
			active = {
				fg = nil,
				bg = nil,
			},
			in_active = {
				fg = nil,
				bg = nil,
			},
		},
		popup = {
			fg = nil,
			bg = nil,
		},
		border = {
			active = {
				fg = nil,
				bg = nil,
			},
			in_active = {
				fg = nil,
				bg = nil,
			},
		},
		selection = {
			fg = nil,
			bg = nil,
		},
		folds = {
			fg = nil,
			bg = nil,
		},
		search = {
			active = {
				fg = nil,
				bg = nil,
			},
			in_active = {
				fg = nil,
				bg = nil,
			},
		},
	},
	lsp = {
		error = {
			fg = nil,
			bg = nil,
		},
		warning = {
			fg = nil,
			bg = nil,
		},
		information = {
			fg = nil,
			bg = nil,
		},
	},
	treesitter = {
		["comment"] = { fg = nil }, -- line and block comments
		["error"] = { fg = nil }, -- syntax/parser errors
		["none"] = { fg = nil }, -- completely disable the highlight
		["preproc"] = { fg = nil }, -- various preprocessor directives & shebangs
		["define"] = { fg = nil }, -- preprocessor definition directives
		["operator"] = { fg = nil }, -- symbolic operators (e.g. `+` / `*`)
		["punctuation.delimiter"] = { fg = nil }, -- delimiters (e.g. `;` / `.` / `,`)
		["punctuation.bracket"] = { fg = nil }, -- brackets (e.g. `()` / `{}` / `[]`)
		["punctuation.special"] = { fg = nil }, -- special symbols (e.g. `{}` in string interpolation)
		["string"] = { fg = nil }, -- string literals
		["string.regex"] = { fg = nil }, -- regular expressions
		["string.escape"] = { fg = nil }, -- escape sequences
		["string.special"] = { fg = nil }, -- other special strings (e.g. dates)
		["character"] = { fg = nil }, -- character literals
		["character.special"] = { fg = nil }, -- special characters (e.g. wildcards)
		["boolean"] = { fg = nil }, -- boolean literals
		["number"] = { fg = nil }, -- numeric literals
		["float"] = { fg = nil }, -- floating-point number literals
		["function"] = { fg = nil }, -- function definitions
		["function.builtin"] = { fg = nil }, -- built-in functions
		["function.call"] = { fg = nil }, -- function calls
		["function.macro"] = { fg = nil }, -- preprocessor macros
		["method"] = { fg = nil }, -- method definitions
		["method.call"] = { fg = nil }, -- method calls
		["constructor"] = { fg = nil }, -- constructor calls and definitions
		["parameter"] = { fg = nil }, -- parameters of a function
		["keyword"] = { fg = nil }, -- various keywords
		["keyword.function"] = { fg = nil }, -- keywords that define a function (e.g. `func` in Go, `def` in Python)
		["keyword.operator"] = { fg = nil }, -- operators that are English words (e.g. `and` / `or`)
		["keyword.return"] = { fg = nil }, -- operators that are English words (e.g. `and` / `or`) hl("@keyword.return", { fg = cp.wred }) -- keywords like `return` and `yield`
		["conditional"] = { fg = nil }, -- keywords related to conditionals (e.g. `if` / `else`)
		["repeat"] = { fg = nil }, -- keywords related to loops (e.g. `for` / `while`)
		["debug"] = { fg = nil }, -- keywords related to debugging
		["label"] = { fg = nil }, -- GOTO and other labels (e.g. `label:` in C)
		["include"] = { fg = nil }, -- keywords for including modules (e.g. `import` / `from` in Python)
		["exception"] = { fg = nil }, -- keywords related to exceptions (e.g. `throw` / `catch`)
		["type"] = { fg = nil }, -- type or class definitions and annotations
		["type.tag"] = { fg = nil }, -- type or class definitions and annotations
		["type.builtin"] = { fg = nil }, -- built-in types
		["type.definition"] = { fg = nil }, -- type definitions (e.g. `typedef` in C)
		["type.qualifier"] = { fg = nil }, -- type qualifiers (e.g. `const`)
		["storageclass"] = { fg = nil }, -- visibility/life-time modifiers
		["storageclass.lifetime"] = { fg = nil }, -- life-time modifiers (e.g. `static`)
		["attribute"] = { fg = nil }, -- attribute annotations (e.g. Python decorators)
		["property"] = { fg = nil }, -- similar to `@field`
		["field"] = { fg = nil }, -- object and struct fields
		["property.class"] = { fg = nil }, -- similar to `@field`
		["variable"] = { fg = nil }, -- various variable names
		["variable.builtin"] = { fg = nil }, -- built-in variable names (e.g. `this`)
		["constant"] = { fg = nil }, -- constant identifiers
		["constant.builtin"] = { fg = nil }, -- built-in constant values
		["constant.macro"] = { fg = nil }, -- constants defined by the preprocessor
		["symbol"] = { fg = nil }, -- symbols or atoms
		["text"] = { fg = nil }, -- non-structured text
		["text.strong"] = { fg = nil }, -- bold text
		["text.emphasis"] = { fg = nil }, -- text with emphasis
		["text.underline"] = { fg = nil }, -- underlined text
		["text.strike"] = { fg = nil }, -- strikethrough text
		["text.title"] = { fg = nil }, -- text that is part of a title
		["text.literal"] = { fg = nil }, -- literal or verbatim text
		["text.uri"] = { fg = nil }, -- URIs (e.g. hyperlinks)
		["text.math"] = { fg = nil }, -- math environments (e.g. `$ ... $` in LaTeX)
		["text.environment"] = { fg = nil }, -- text environments of markup languages
		["text.environment.name"] = { fg = nil }, -- text indicating the type of an environment
		["text.reference"] = { fg = nil }, -- text references, footnotes, citations, etc.
		["text.todo"] = { fg = nil }, -- todo notes
		["text.note"] = { fg = nil }, -- info notes
		["text.warning"] = { fg = nil }, -- warning notes
		["text.danger"] = { fg = nil }, -- danger/error notes
		["text.diff.add"] = { fg = nil }, -- added text (for diff files)
		["text.diff.delete"] = { fg = nil }, -- deleted text (for diff files)
		["tag"] = { fg = nil }, -- XML tag names
		["tag.attribute"] = { fg = nil }, -- XML tag attributes
		["tag.delimiter"] = { fg = nil }, -- XML tag delimiters
		["conceal"] = { fg = nil }, -- for captures that are only used for concealing
	},
	git = {
		add = {
			fg = nil,
		},
		change = {
			fg = nil,
		},
		delete = {
			fg = nil,
		},
	},
}

return M
