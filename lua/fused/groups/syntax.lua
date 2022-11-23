local M = {}

M.load_hl = function(hl, cp)
	hl("Constant", { link = "@constant" }) -- (preferred) any constant
	hl("String", { link = "@string" }) --   a string constant: "this is a string"
	hl("Character", { link = "@character" }) --  a character constant: 'c', '\n'
	hl("Number", { link = "@number" }) --   a number constant: 234, 0xff
	hl("Boolean", { link = "@boolean" }) --  a boolean constant: TRUE, false
	hl("Float", { link = "@float" }) --    a floating point constant: 2.3e10

	hl("Identifier", { fg = cp.variable }) -- (preferred) any variable name
	hl("Function", { link = "@function" }) -- function name (also: methods for classes)

	hl("Statement", { fg = cp.light_pink }) -- (preferred) any statement
	hl("Conditional", { fg = cp.light_pink }) --  if, then, else, endif, switch, etc.
	hl("Repeat", { fg = cp.light_pink }) --   for, do, while, etc.
	hl("Label", { link = "@label" }) --    case, default, etc.
	hl("Operator", { link = "@operator" }) -- "sizeof", "+", "*", etc.
	hl("Keyword", { link = "@keyword" }) --  any other keyword
	hl("Exception", { link = "@exception" }) --  try, catch, throw

	hl("PreProc", { fg = cp.blue }) -- (preferred) generic Preprocessor
	hl("Include", { fg = cp.light_pink }) --  preprocessor #include
	hl("Define", { fg = cp.light_pink }) --   preprocessor #define
	hl("Macro", { fg = cp.light_pink }) --    same as Define
	hl("PreCondit", { link = "@conditional" }) --  preprocessor #if, #else, #endif, etc.

	hl("Type", { link = "@type" }) -- (preferred) int, long, char, etc.
	hl("StorageClass", { link = "@field" }) -- static, register, volatile, etc.
	hl("Structure", { fg = cp.light_pink }) --  struct, union, enum, etc.
	hl("Typedef", { fg = cp.light_pink }) --  A typedef

	hl("Special", { fg = cp.light_pink }) -- (preferred) any special symbol
	hl("SpecialChar", { fg = cp.magenta }) --  special character in a constant
	hl("Tag", { fg = cp.wred }) --    you can use CTRL-] on this
	hl("Delimiter", { fg = cp.magenta }) --  character that needs attention
	hl("SpecialComment", { fg = cp.string }) -- special things inside a comment
	hl("Debug", { fg = cp.wred }) --    debugging statements

	-- ("Ignore", below, may be invisible...)
	-- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

	hl("Error", { fg = cp.err_sev, bg = cp.base, bold = true }) -- (preferred) any erroneous construct

	hl("Todo", { fg = cp.warn, bg = cp.base, bold = true }) -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
end
return M
