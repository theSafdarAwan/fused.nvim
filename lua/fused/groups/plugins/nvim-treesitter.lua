local M = {}
local utils = require("fused.utils")

M.get_hl_groups = function(cp)
	-- Misc
	return {
		["@comment"] = { link = "Comment" }, -- line and block comments
		["@error"] = { fg = cp.base11 }, -- syntax/parser errors
		["@none"] = {}, -- completely disable the highlight
		["@preproc"] = { fg = cp.base17 }, -- various preprocessor directives & shebangs
		["@define"] = { fg = cp.base10 }, -- preprocessor definition directives
		["@operator"] = { link = "Operator" }, -- symbolic operators (e.g. `+` / `*`)

		-- Punctuation
		["@punctuation.delimiter"] = { fg = cp.base06 }, -- delimiters (e.g. `;` / `.` / `,`)
		["@punctuation.bracket"] = { fg = cp.base12 }, -- brackets (e.g. `()` / `{}` / `[]`)
		["@punctuation.special"] = { fg = cp.base11 }, -- special symbols (e.g. `{}` in string interpolation)

		-- Literals
		["@string"] = { link = "String" }, -- string literals
		["@string.plain"] = { fg = cp.base13 }, -- css property, etcc
		["@string.regex"] = { fg = cp.base12 }, -- regular expressions
		["@string.escape"] = { fg = cp.base11 }, -- escape sequences
		["@string.special"] = { fg = cp.base07 }, -- other special strings (e.g. dates)

		["@character"] = { link = "Character" }, -- character literals
		["@character.special"] = { fg = cp.base12 }, -- special characters (e.g. wildcards)

		["@boolean"] = { link = "Boolean" }, -- boolean literals
		["@number"] = { link = "Number" }, -- numeric literals
		["@float"] = { link = "Float" }, -- floating-point number literals

		-- Functions
		["@function"] = { link = "Function" }, -- function definitions
		["@function.builtin"] = { link = "@function" }, -- built-in functions
		["@function.call"] = { link = "@function" }, -- function calls
		["@function.macro"] = { fg = cp.base13 }, -- preprocessor macros

		["@method"] = { fg = cp.base17 }, -- method definitions
		["@method.call"] = { link = "@method" }, -- method calls

		["@constructor"] = { fg = cp.base13 }, -- constructor calls and definitions
		["@parameter"] = { fg = cp.base09, italic = utils.italics }, -- parameters of a function

		-- Keywords
		["@keyword"] = { fg = cp.base14, italic = utils.italics }, -- various keywords
		["@keyword.function"] = { fg = cp.base14 }, -- keywords that define a function (e.g. `func` in Go, `def` in Python)
		["@keyword.operator"] = { link = "@keyword" }, -- operators that are English words (e.g. `and` / `or`)
		["@keyword.return"] = { link = "@keyword.function" }, -- operators that are English words (e.g. `and` / `or`) hl("@keyword.return", { fg = cp.wred }) -- keywords like `return` and `yield`

		["@conditional"] = { link = "@keyword" }, -- keywords related to conditionals (e.g. `if` / `else`)
		["@repeat"] = { link = "@keyword" }, -- keywords related to loops (e.g. `for` / `while`)
		["@debug"] = { link = "@keyword" }, -- keywords related to debugging
		["@label"] = { link = "@keyword" }, -- GOTO and other labels (e.g. `label:` in C)
		["@include"] = { fg = cp.base15, italic = utils.italics }, -- keywords for including modules (e.g. `import` / `from` in Python)
		["@exception"] = { link = "@keyword" }, -- keywords related to exceptions (e.g. `throw` / `catch`)

		-- Types
		["@type"] = { link = "Type" }, -- type or class definitions and annotations
		["@type.tag"] = { fg = cp.base11 }, -- type or class definitions and annotations
		["@type.builtin"] = { link = "@keyword" }, -- built-in types
		["@type.definition"] = { link = "Type" }, -- type definitions (e.g. `typedef` in C)
		["@type.qualifier"] = { link = "Type" }, -- type qualifiers (e.g. `const`)

		["@storageclass"] = {}, -- visibility/life-time modifiers
		["@storageclass.lifetime"] = {}, -- life-time modifiers (e.g. `static`)
		["@attribute"] = {}, -- attribute annotations (e.g. Python decorators)
		["@property"] = { fg = cp.base10 }, -- similar to `@field`
		["@field"] = { link = "@property" }, -- object and struct fields
		["@field.key"] = { link = "@property" },
		["@property.class"] = { fg = cp.base12 }, -- similar to `@field` for css class etc
		["@property.id"] = { fg = cp.base13 }, -- css id,etc.

		-- #### Identifiers
		["@variable"] = { fg = cp.base17 }, -- various variable names
		["@variable.builtin"] = { fg = cp.base20 }, -- built-in variable names (e.g. `this`)

		["@constant"] = { link = "Constant" }, -- constant identifiers
		["@constant.builtin"] = { fg = cp.base14 }, -- built-in constant values
		["@constant.macro"] = { link = "@define" }, -- constants defined by the preprocessor

		-- @namespace        -- modules or namespaces
		["@symbol"] = { link = "@field" }, -- symbols or atoms

		-- ["@label"] = { fg = cp.base12 }, -- symbols or atoms
		-- #### Text
		-- Mainly for markup languages.
		["@text"] = { fg = cp.base07 }, -- non-structured text
		["@text.strong"] = { fg = cp.base07, bold = true }, -- bold text
		["@text.emphasis"] = { fg = cp.base07, italic = utils.italics }, -- text with emphasis
		["@text.underline"] = { fg = cp.base07, underline = true }, -- underlined text
		["@text.strike"] = { fg = cp.base07, strikethrough = true }, -- strikethrough text
		["@text.title"] = { fg = cp.base07 }, -- text that is part of a title
		["@text.literal"] = { fg = cp.base05 }, -- literal or verbatim text
		["@text.uri"] = { fg = cp.base06, underline = true }, -- URIs (e.g. hyperlinks)
		["@text.math"] = { fg = cp.base18 }, -- math environments (e.g. `$ ... $` in LaTeX)
		["@text.environment"] = { fg = cp.base07 }, -- text environments of markup languages
		["@text.environment.name"] = { fg = cp.base07 }, -- text indicating the type of an environment
		["@text.reference"] = { fg = cp.base07, undercurl = true }, -- text references, footnotes, citations, etc.

		["@text.todo"] = { fg = cp.base17 }, -- todo notes
		["@text.note"] = { link = "@field" }, -- info notes
		["@text.warning"] = { fg = cp.base09 }, -- warning notes
		["@text.danger"] = { fg = cp.base11 }, -- danger/error notes

		["@text.diff.add"] = { fg = cp.base15 }, -- added text (for diff files)
		["@text.diff.delete"] = { fg = cp.base11 }, -- deleted text (for diff files)

		-- #### Tags
		-- Used for XML-like tags.
		["@tag"] = { link = "Tag" }, -- XML tag names
		["@tag.attribute"] = { fg = cp.base16 }, -- XML tag attributes
		["@tag.delimiter"] = { fg = cp.base05 }, -- XML tag delimiters

		-- #### Conceal
		["@conceal"] = { fg = cp.base04 }, -- for captures that are only used for concealing

		-- `@conceal` must be followed by `(#set! conceal "")`.

		-- #### Spell
		-- ["@spell"] = {}, -- for defining regions to be spellchecked

		-- #### Non-standard
		-- These captures are used by some languages but don't have any default hig] =,hts.
		-- They fall back to the parent capture if they are not manually defined.
		-- @variable.global

		-- -- ### Locals
		-- ["@definition"] = {}, -- various definitions
		-- ["@definition.constant"] = {}, -- constants
		-- ["@definition.function"] = {}, -- functions
		-- ["@definition.method"] = {}, -- methods
		-- ["@definition.var"] = {}, -- variables
		-- ["@definition.parameter"] = {}, -- parameters
		-- ["@definition.macro"] = {}, -- preprocessor macros
		-- ["@definition.type"] = {}, -- types or classes
		-- ["@definition.field"] = {}, -- fields or properties
		-- ["@definition.enum"] = {}, -- enumerations
		-- ["@definition.namespace"] = {}, -- modules or namespaces
		-- ["@definition.import"] = {}, -- imported names
		-- ["@definition.associated"] = {}, -- the associated type of a variable

		-- ["@scope"] = {}, -- scope block
		-- ["@reference"] = {}, -- identifier reference

		-- #### Definition Scope
		-- You can set the scope of a definition by setting the `scope` property on the definition.
		--
		-- For example, a javascript function declaration creates a scope. The function name is captured as the definition.
		-- This means that the function definition would only be available WITHIN the scope of the function, which is not the case.
		-- The definition can be used in the scope the function was defined in.

		-- function doSomething() {}
		-- doSomething(); // Should point to the declaration as the definition

		-- (function_declaration
		--   ((identifier) @definition.var)
		--    (#set! "definition.var.scope" "parent"))

		-- Possible scope values are:

		-- - `parent`: The definition is valid in the containing scope and one more scope above that scope
		-- - `global`: The definition is valid in the root scope
		-- - `local`: The definition is valid in the containing scope. This is the default behavior

		-- ### Folds
		-- ```scheme
		-- @fold ; fold this node
		-- If the `fold.scm` query is not present, this will fallback to the `@scope` captures in the `locals`
		-- query.

		-- ### Injections
		-- Some captures are related to language injection (like markdown code blocks). They are used in `injections.scm`.
		-- You can directly use the name of the language that you want to inject (e.g. `@html` to inject html).

		-- If you want to dynamically detect the language (e.g. for Markdown blocks) use the `@language` to capture
		-- the node describing the language and `@content` to describe the injection region.

		-- @{lang}   ; e.g. @html to describe a html region

		-- @language -- dynamic detection of the injection language (i.e. the text of the captured node describes the language)
		-- @content  -- region for the dynamically detected language
		-- @combined -- combine all matches of a pattern as one single block of content

		-- ### Indents
		-- ["@indent"] = {}, -- indent children when matching this node
		-- ["@indent_end"] = {}, -- marks the end of indented block
		-- ["@aligned_indent"] = {}, -- behaves like python aligned/hanging indent
		-- ["@dedent"] = {}, -- dedent children when matching this node
		-- ["@branch"] = {}, -- dedent itself when matching this node
		-- ["@ignore"] = {}, -- do not indent in this node
		-- ["@auto"] = {}, -- behaves like 'autoindent' buffer option
		-- ["@zero_indent"] = {}, -- sets this node at position 0 (no indent)
	}
end

return M
