local M = {}

M.set_tree_sitter_hl = function(hl, cp)
    -- Misc
    hl("@comment", { fg = cp.cp1, italic = true }) -- line and block comments
    hl("@error", { fg = cp.err }) -- syntax/parser errors
    hl("@none", {}) -- completely disable the highlight
    hl("@preproc", { fg = cp.sky_blue }) -- various preprocessor directives & shebangs
    hl("@define", { fg = cp.blue }) -- preprocessor definition directives
    hl("@operator", { fg = cp.white }) -- symbolic operators (e.g. `+` / `*`)

    -- Punctuation
    hl("@punctuation.delimiter", { fg = cp.white }) -- delimiters (e.g. `;` / `.` / `,`)
    hl("@punctuation.bracket", { fg = cp.dyellow }) -- brackets (e.g. `()` / `{}` / `[]`)
    hl("@punctuation.special", { fg = cp.wred }) -- special symbols (e.g. `{}` in string interpolation)

    -- Literals
    hl("@string", { fg = cp.string }) -- string literals
    hl("@string.regex", { fg = cp.dyellow }) -- regular expressions
    hl("@string.escape", { fg = cp.light_pink }) -- escape sequences
    hl("@string.special", { fg = cp.text }) -- other special strings (e.g. dates)

    hl("@character", { fg = cp.deep_pink }) -- character literals
    hl("@character.special", { fg = cp.dyellow }) -- special characters (e.g. wildcards)

    hl("@boolean", { fg = cp.warn }) -- boolean literals
    hl("@number", { fg = cp.dyellow }) -- numeric literals
    hl("@float", { fg = cp.dyellow }) -- floating-point number literals

    -- Functions
    hl("@function", { fg = cp.func }) -- function definitions
    hl("@function.builtin", { link = "@function" }) -- built-in functions
    hl("@function.call", { link = "@function" }) -- function calls
    hl("@function.macro", { fg = cp.magenta }) -- preprocessor macros

    hl("@method", { link = "@function" }) -- method definitions
    hl("@method.call", { link = "@function.call" }) -- method calls

    hl("@constructor", { fg = cp.teal }) -- constructor calls and definitions
    hl("@parameter", { fg = cp.radish_pink, italic = true }) -- parameters of a function

    -- Keywords
    hl("@keyword", { fg = cp.keywords, italic = true }) -- various keywords
    hl("@keyword.function", { fg = cp.keywords }) -- keywords that define a function (e.g. `func` in Go, `def` in Python)
    hl("@keyword.operator", { link = "@keyword" }) -- operators that are English words (e.g. `and` / `or`) hl("@keyword.return", { fg = cp.wred }) -- keywords like `return` and `yield`
    hl("@keyword.return", { link = "@keyword.function" }) -- operators that are English words (e.g. `and` / `or`) hl("@keyword.return", { fg = cp.wred }) -- keywords like `return` and `yield`

    hl("@conditional", { link = "@keyword" }) -- keywords related to conditionals (e.g. `if` / `else`)
    hl("@repeat", { link = "@keyword" }) -- keywords related to loops (e.g. `for` / `while`)
    hl("@debug", { link = "@keyword" }) -- keywords related to debugging
    hl("@label", { link = "@keyword" }) -- GOTO and other labels (e.g. `label:` in C)
    hl("@include", { fg = cp.search, italic = true }) -- keywords for including modules (e.g. `import` / `from` in Python)
    hl("@exception", { link = "@keyword" }) -- keywords related to exceptions (e.g. `throw` / `catch`)

    -- Types
    hl("@type", { fg = cp.magenta }) -- type or class definitions and annotations
    hl("@type.builtin", { link = "@type" }) -- built-in types
    hl("@type.definition", { link = "@type" }) -- type definitions (e.g. `typedef` in C)
    hl("@type.qualifier", { link = "@type" }) -- type qualifiers (e.g. `const`)

    hl("@storageclass", {}) -- visibility/life-time modifiers
    hl("@storageclass.lifetime", {}) -- life-time modifiers (e.g. `static`)
    hl("@attribute", {}) -- attribute annotations (e.g. Python decorators)
    hl("@field", { fg = cp.property }) -- object and struct fields
    hl("@property", { link = "@field" }) -- similar to `@field`

    -- #### Identifiers
    hl("@variable", { fg = cp.variable }) -- various variable names
    hl("@variable.builtin", { fg = cp.key }) -- built-in variable names (e.g. `this`)

    hl("@constant", { fg = cp.const }) -- constant identifiers
    hl("@constant.builtin", { link = "@variable.builtin" }) -- built-in constant values
    hl("@constant.macro", { link = "@define" }) -- constants defined by the preprocessor

    -- @namespace        -- modules or namespaces
    hl("@symbol", { link = "@field" }) -- symbols or atoms

    -- #### Text
    -- Mainly for markup languages.
    hl("@text", { fg = cp.text }) -- non-structured text
    hl("@text.strong", { fg = cp.text, bold = true }) -- bold text
    hl("@text.emphasis", { fg = cp.text, italic = true }) -- text with emphasis
    hl("@text.underline", { fg = cp.text, underline = true }) -- underlined text
    hl("@text.strike", { fg = cp.text, strikethrough = true }) -- strikethrough text
    hl("@text.title", { fg = cp.warn }) -- text that is part of a title
    hl("@text.literal", { fg = cp.cp1 }) -- literal or verbatim text
    hl("@text.uri", { link = "@text.underline" }) -- URIs (e.g. hyperlinks)
    hl("@text.math", { fg = cp.string }) -- math environments (e.g. `$ ... $` in LaTeX)
    hl("@text.environment", { fg = cp.text }) -- text environments of markup languages
    hl("@text.environment.name", { fg = cp.text }) -- text indicating the type of an environment
    hl("@text.reference", { fg = cp.text, undercurl = true }) -- text references, footnotes, citations, etc.

    hl("@text.todo", { fg = cp.sky_blue }) -- todo notes
    hl("@text.note", { link = "@field" }) -- info notes
    hl("@text.warning", { fg = cp.warn }) -- warning notes
    hl("@text.danger", { fg = cp.err }) -- danger/error notes

    hl("@text.diff.add", { fg = cp.search }) -- added text (for diff files)
    hl("@text.diff.delete", { fg = cp.wred }) -- deleted text (for diff files)

    -- #### Tags
    -- Used for XML-like tags.
    hl("@tag", { fg = cp.dyellow }) -- XML tag names
    hl("@tag.attribute", { fg = cp.magenta }) -- XML tag attributes
    hl("@tag.delimiter", { fg = cp.radish_pink }) -- XML tag delimiters

    -- #### Conceal
    hl("@conceal", { fg = cp.cp0 }) -- for captures that are only used for concealing

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
