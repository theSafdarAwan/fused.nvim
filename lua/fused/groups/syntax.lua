local M = {}

M.get_hl_groups = function(cp)
	return {
		Constant = { fg = cp.base15 }, -- (preferred) any constant
		String = { fg = cp.base16 }, --   a string constant: "this is a string"
		Character = { fg = cp.base12 }, --  a character constant: 'c', '\n'
		Number = { fg = cp.base10 }, --   a number constant: 234, 0xff
		Boolean = { fg = cp.base07 }, --  a boolean constant: TRUE, false
		Float = { fg = cp.base10 }, --    a floating point constant: 2.3e10

		Identifier = { fg = cp.base15 }, -- (preferred) any variable name
		Function = { fg = cp.base09 }, -- function name (also: methods for classes)

		Statement = { fg = cp.base09 }, -- (preferred) any statement
		Conditional = { fg = cp.base09 }, --  if, then, else, endif, switch, etc.
		Repeat = { fg = cp.base09 }, --   for, do, while, etc.
		Label = { fg = cp.base10 }, --    case, default, etc.
		Operator = { fg = cp.base04 }, -- "sizeof", "+", "*", etc.
		Keyword = { link = "Label" }, --  any other keyword
		Exception = { link = "Label" }, --  try, catch, throw

		PreProc = { fg = cp.base08 }, -- (preferred) generic Preprocessor
		Include = { fg = cp.base09 }, --  preprocessor #include
		Define = { fg = cp.base09 }, --   preprocessor #define
		Macro = { fg = cp.base09 }, --    same as Define
		PreCondit = { link = "Label" }, --  preprocessor #if, #else, #endif, etc.

		Type = { fg = cp.base11 }, -- (preferred) int, long, char, etc.
		StorageClass = { fg = cp.base08 }, -- static, register, volatile, etc.
		Structure = { link = "Type" }, --  struct, union, enum, etc.
		Typedef = { fg = cp.base09 }, --  A typedef

		Special = { fg = cp.base09 }, -- (preferred) any special symbol
		SpecialChar = { fg = cp.base12 }, --  special character in a constant
		Tag = { fg = cp.base09 }, --    you can use CTRL-] on this
		Delimiter = { fg = cp.base12 }, --  character that needs attention
		SpecialComment = { fg = cp.base16 }, -- special things inside a comment
		Debug = { fg = cp.base09 }, --    debugging statements

		-- ("Ignore", below, may be invisible...)
		-- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error = { fg = cp.base06, bg = cp.base, bold = true }, -- (preferred) any erroneous construct

		Todo = { fg = cp.base07, bg = cp.base, bold = true }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
	}
end
return M
