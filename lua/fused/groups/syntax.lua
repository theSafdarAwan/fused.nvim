local M = {}

M.get_hl_groups = function(cp)
	return {
		Constant = { fg = cp.base17 }, -- (preferred) any constant
		String = { fg = cp.base18 }, --   a string constant: "this is a string"
		Character = { fg = cp.base14 }, --  a character constant: 'c', '\n'
		Number = { fg = cp.base12 }, --   a number constant: 234, 0xff
		Boolean = { fg = cp.base09 }, --  a boolean constant: TRUE, false
		Float = { fg = cp.base12 }, --    a floating point constant: 2.3e10

		Identifier = { fg = cp.base17 }, -- (preferred) any variable name
		Function = { fg = cp.base11 }, -- function name (also: methods for classes)

		Statement = { fg = cp.base11 }, -- (preferred) any statement
		Conditional = { fg = cp.base11 }, --  if, then, else, endif, switch, etc.
		Repeat = { fg = cp.base11 }, --   for, do, while, etc.
		Label = { fg = cp.base12 }, --    case, default, etc.
		Operator = { fg = cp.base06 }, -- "sizeof", "+", "*", etc.
		Keyword = { link = "Label" }, --  any other keyword
		Exception = { link = "Label" }, --  try, catch, throw

		PreProc = { fg = cp.base10 }, -- (preferred) generic Preprocessor
		Include = { fg = cp.base11 }, --  preprocessor #include
		Define = { fg = cp.base11 }, --   preprocessor #define
		Macro = { fg = cp.base11 }, --    same as Define
		PreCondit = { link = "Label" }, --  preprocessor #if, #else, #endif, etc.

		Type = { fg = cp.base14 }, -- (preferred) int, long, char, etc.
		StorageClass = { fg = cp.base10 }, -- static, register, volatile, etc.
		Structure = { fg = cp.base11 }, --  struct, union, enum, etc.
		Typedef = { fg = cp.base11 }, --  A typedef

		Special = { fg = cp.base11 }, -- (preferred) any special symbol
		SpecialChar = { fg = cp.base14 }, --  special character in a constant
		Tag = { fg = cp.base11 }, --    you can use CTRL-] on this
		Delimiter = { fg = cp.base14 }, --  character that needs attention
		SpecialComment = { fg = cp.base18 }, -- special things inside a comment
		Debug = { fg = cp.base11 }, --    debugging statements

		-- ("Ignore", below, may be invisible...)
		-- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error = { fg = cp.base08, bg = cp.base, bold = true }, -- (preferred) any erroneous construct

		Todo = { fg = cp.base09, bg = cp.base, bold = true }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
	}
end
return M
