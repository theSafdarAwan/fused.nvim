local M = {}
local utils = require("fused.utils")

M.load_hl = function(hl, cp)
	-- Misc
	hl("@comment", { link = "Comment" }) -- line and block comments
	hl("@error", { fg = cp.err }) -- syntax/parser errors
	hl("@none", {}) -- completely disable the highlight
	hl("@preproc", { fg = cp.variable }) -- various preprocessor directives & shebangs
	hl("@define", { fg = cp.blue }) -- preprocessor definition directives
	hl("@operator", { link = "Operator" }) -- symbolic operators (e.g. `+` / `*`)

	-- Punctuation
	hl("@punctuation.delimiter", { fg = cp.white }) -- delimiters (e.g. `;` / `.` / `,`)
	hl("@punctuation.bracket", { fg = cp.orange }) -- brackets (e.g. `()` / `{}` / `[]`)
	hl("@punctuation.special", { fg = cp.red2 }) -- special symbols (e.g. `{}` in string interpolation)

	-- Literals
	hl("@string", { link = "String" }) -- string literals
	hl("@string.regex", { fg = cp.orange }) -- regular expressions
	hl("@string.escape", { fg = cp.light_pink }) -- escape sequences
	hl("@string.special", { fg = cp.text }) -- other special strings (e.g. dates)

	hl("@character", { link = "Character" }) -- character literals
	hl("@character.special", { fg = cp.orange }) -- special characters (e.g. wildcards)

	hl("@boolean", { link = "Boolean" }) -- boolean literals
	hl("@number", { link = "Number" }) -- numeric literals
	hl("@float", { link = "Float" }) -- floating-point number literals

	-- Functions
	hl("@function", { link = "Function" }) -- function definitions
	hl("@function.builtin", { link = "@function" }) -- built-in functions
	hl("@function.call", { link = "@function" }) -- function calls
	hl("@function.macro", { fg = cp.magenta }) -- preprocessor macros

	hl("@method", { fg = cp.method }) -- method definitions
	hl("@method.call", { link = "@method" }) -- method calls

	hl("@constructor", { fg = cp.teal }) -- constructor calls and definitions
	hl("@parameter", { fg = cp.const, italic = utils.italics }) -- parameters of a function

	-- Keywords
	hl("@keyword", { link = "Label" }) -- various keywords
	hl("@keyword.function", { fg = cp.keywords }) -- keywords that define a function (e.g. `func` in Go, `def` in Python)
	hl("@keyword.operator", { link = "Label" }) -- operators that are English words (e.g. `and` / `or`)
	hl("@keyword.return", { link = "@keyword.function" }) -- operators that are English words (e.g. `and` / `or`) hl("@keyword.return", { fg = cp.wred }) -- keywords like `return` and `yield`

	hl("@conditional", { link = "Label" }) -- keywords related to conditionals (e.g. `if` / `else`)
	hl("@repeat", { link = "Label" }) -- keywords related to loops (e.g. `for` / `while`)
	hl("@debug", { link = "Label" }) -- keywords related to debugging
	hl("@label", { link = "Label" }) -- GOTO and other labels (e.g. `label:` in C)
	hl("@include", { fg = cp.search, italic = utils.italics }) -- keywords for including modules (e.g. `import` / `from` in Python)
	hl("@exception", { link = "Label" }) -- keywords related to exceptions (e.g. `throw` / `catch`)

	-- Types
	hl("@type", { link = "Type" }) -- type or class definitions and annotations
	hl("@type.tag", { fg = cp.err }) -- type or class definitions and annotations
	hl("@type.builtin", { link = "Type" }) -- built-in types
	hl("@type.definition", { link = "Type" }) -- type definitions (e.g. `typedef` in C)
	hl("@type.qualifier", { link = "Type" }) -- type qualifiers (e.g. `const`)

	hl("@storageclass", {}) -- visibility/life-time modifiers
	hl("@storageclass.lifetime", {}) -- life-time modifiers (e.g. `static`)
	hl("@attribute", {}) -- attribute annotations (e.g. Python decorators)
	hl("@property", { fg = cp.property }) -- similar to `@field`
	hl("@field", { link = "@property" }) -- object and struct fields
	hl("@property.class", { fg = cp.const }) -- similar to `@field`

	-- #### Identifiers
	hl("@variable", { fg = cp.variable }) -- various variable names
	hl("@variable.builtin", { fg = cp.key }) -- built-in variable names (e.g. `this`)

	hl("@constant", { link = "Constant" }) -- constant identifiers
	hl("@constant.builtin", { fg = cp.keywords }) -- built-in constant values
	hl("@constant.macro", { link = "@define" }) -- constants defined by the preprocessor

	-- @namespace        -- modules or namespaces
	hl("@symbol", { link = "@field" }) -- symbols or atoms

	hl("@label", { fg = cp.orange }) -- symbols or atoms
	-- #### Text
	-- Mainly for markup languages.
	hl("@text", { fg = cp.text }) -- non-structured text
	hl("@text.strong", { fg = cp.text, bold = true }) -- bold text
	hl("@text.emphasis", { fg = cp.text, italic = utils.italics }) -- text with emphasis
	hl("@text.underline", { fg = cp.text, underline = true }) -- underlined text
	hl("@text.strike", { fg = cp.text, strikethrough = true }) -- strikethrough text
	hl("@text.title", { fg = cp.search, bold = true }) -- text that is part of a title
	hl("@text.literal", { fg = cp.cp1 }) -- literal or verbatim text
	hl("@text.uri", { fg = cp.cp2, underline = true }) -- URIs (e.g. hyperlinks)
	hl("@text.math", { fg = cp.string }) -- math environments (e.g. `$ ... $` in LaTeX)
	hl("@text.environment", { fg = cp.text }) -- text environments of markup languages
	hl("@text.environment.name", { fg = cp.text }) -- text indicating the type of an environment
	hl("@text.reference", { fg = cp.text, undercurl = true }) -- text references, footnotes, citations, etc.

	hl("@text.todo", { fg = cp.variable }) -- todo notes
	hl("@text.note", { link = "@field" }) -- info notes
	hl("@text.warning", { fg = cp.warn }) -- warning notes
	hl("@text.danger", { fg = cp.err }) -- danger/error notes

	hl("@text.diff.add", { fg = cp.search }) -- added text (for diff files)
	hl("@text.diff.delete", { fg = cp.red2 }) -- deleted text (for diff files)

	-- #### Tags
	-- Used for XML-like tags.
	hl("@tag", { link = "Tag" }) -- XML tag names
	hl("@tag.attribute", { fg = cp.variable }) -- XML tag attributes
	hl("@tag.delimiter", { fg = cp.cp1 }) -- XML tag delimiters

	-- #### Conceal
	hl("@conceal", { fg = cp.cp4 }) -- for captures that are only used for concealing

	-- `@conceal` must be followed by `(#set! conceal "")`.

	-- #### Spell
	-- hl("@spell", {}) -- for defining regions to be spellchecked

	-- #### Non-standard
	-- These captures are used by some languages but don't have any default highlights.
	-- They fall back to the parent capture if they are not manually defined.
	-- @variable.global

	-- -- ### Locals
	-- hl("@definition", {}) -- various definitions
	-- hl("@definition.constant", {}) -- constants
	-- hl("@definition.function", {}) -- functions
	-- hl("@definition.method", {}) -- methods
	-- hl("@definition.var", {}) -- variables
	-- hl("@definition.parameter", {}) -- parameters
	-- hl("@definition.macro", {}) -- preprocessor macros
	-- hl("@definition.type", {}) -- types or classes
	-- hl("@definition.field", {}) -- fields or properties
	-- hl("@definition.enum", {}) -- enumerations
	-- hl("@definition.namespace", {}) -- modules or namespaces
	-- hl("@definition.import", {}) -- imported names
	-- hl("@definition.associated", {}) -- the associated type of a variable

	-- hl("@scope", {}) -- scope block
	-- hl("@reference", {}) -- identifier reference

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
	-- hl("@indent", {}) -- indent children when matching this node
	-- hl("@indent_end", {}) -- marks the end of indented block
	-- hl("@aligned_indent", {}) -- behaves like python aligned/hanging indent
	-- hl("@dedent", {}) -- dedent children when matching this node
	-- hl("@branch", {}) -- dedent itself when matching this node
	-- hl("@ignore", {}) -- do not indent in this node
	-- hl("@auto", {}) -- behaves like 'autoindent' buffer option
	-- hl("@zero_indent", {}) -- sets this node at position 0 (no indent)
end

return M
