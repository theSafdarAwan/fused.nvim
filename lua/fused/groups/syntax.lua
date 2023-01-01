local M = {}

local utils = require("fused.utils")

M.load_hl = function(hl, cp)
	hl("Constant", { fg = cp.const }) -- (preferred) any constant
	hl("String", { fg = cp.string }) --   a string constant: "this is a string"
	hl("Character", { fg = cp.magenta }) --  a character constant: 'c', '\n'
	hl("Number", { fg = cp.orange }) --   a number constant: 234, 0xff
	hl("Boolean", { fg = cp.warn }) --  a boolean constant: TRUE, false
	hl("Float", { fg = cp.orange }) --    a floating point constant: 2.3e10

	hl("Identifier", { fg = cp.variable }) -- (preferred) any variable name
	hl("Function", { fg = cp.func }) -- function name (also: methods for classes)

	hl("Statement", { fg = cp.light_pink }) -- (preferred) any statement
	hl("Conditional", { fg = cp.light_pink }) --  if, then, else, endif, switch, etc.
	hl("Repeat", { fg = cp.light_pink }) --   for, do, while, etc.
	hl("Label", { fg = cp.keywords, italic = utils.italics }) --    case, default, etc.
	hl("Operator", { fg = cp.white }) -- "sizeof", "+", "*", etc.
	hl("Keyword", { link = "Label" }) --  any other keyword
	hl("Exception", { link = "Label" }) --  try, catch, throw

	hl("PreProc", { fg = cp.blue }) -- (preferred) generic Preprocessor
	hl("Include", { fg = cp.light_pink }) --  preprocessor #include
	hl("Define", { fg = cp.light_pink }) --   preprocessor #define
	hl("Macro", { fg = cp.light_pink }) --    same as Define
	hl("PreCondit", { link = "Label" }) --  preprocessor #if, #else, #endif, etc.

	hl("Type", { fg = cp.magenta }) -- (preferred) int, long, char, etc.
	hl("StorageClass", { fg = cp.property }) -- static, register, volatile, etc.
	hl("Structure", { fg = cp.light_pink }) --  struct, union, enum, etc.
	hl("Typedef", { fg = cp.light_pink }) --  A typedef

	hl("Special", { fg = cp.light_pink }) -- (preferred) any special symbol
	hl("SpecialChar", { fg = cp.magenta }) --  special character in a constant
	hl("Tag", { fg = cp.red2 }) --    you can use CTRL-] on this
	hl("Delimiter", { fg = cp.magenta }) --  character that needs attention
	hl("SpecialComment", { fg = cp.string }) -- special things inside a comment
	hl("Debug", { fg = cp.red2 }) --    debugging statements

	-- ("Ignore", below, may be invisible...)
	-- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

	hl("Error", { fg = cp.err_sev, bg = cp.base, bold = true }) -- (preferred) any erroneous construct

	hl("Todo", { fg = cp.warn, bg = cp.base, bold = true }) -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
end
return M
