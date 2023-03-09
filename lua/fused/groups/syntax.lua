local M = {}

M.get_hl_groups = function(cp)
	return {
		Constant = { fg = cp.const }, -- (preferred) any constant
		String = { fg = cp.string }, --   a string constant: "this is a string"
		Character = { fg = cp.magenta }, --  a character constant: 'c', '\n'
		Number = { fg = cp.orange }, --   a number constant: 234, 0xff
		Boolean = { fg = cp.warn }, --  a boolean constant: TRUE, false
		Float = { fg = cp.orange }, --    a floating point constant: 2.3e10

		Identifier = { fg = cp.variable }, -- (preferred) any variable name
		Function = { fg = cp.func }, -- function name (also: methods for classes)

		Statement = { fg = cp.light_pink }, -- (preferred) any statement
		Conditional = { fg = cp.light_pink }, --  if, then, else, endif, switch, etc.
		Repeat = { fg = cp.light_pink }, --   for, do, while, etc.
		Label = { fg = cp.orange }, --    case, default, etc.
		Operator = { fg = cp.base06 }, -- "sizeof", "+", "*", etc.
		Keyword = { link = "Label" }, --  any other keyword
		Exception = { link = "Label" }, --  try, catch, throw

		PreProc = { fg = cp.blue }, -- (preferred) generic Preprocessor
		Include = { fg = cp.light_pink }, --  preprocessor #include
		Define = { fg = cp.light_pink }, --   preprocessor #define
		Macro = { fg = cp.light_pink }, --    same as Define
		PreCondit = { link = "Label" }, --  preprocessor #if, #else, #endif, etc.

		Type = { fg = cp.magenta }, -- (preferred) int, long, char, etc.
		StorageClass = { fg = cp.property }, -- static, register, volatile, etc.
		Structure = { fg = cp.light_pink }, --  struct, union, enum, etc.
		Typedef = { fg = cp.light_pink }, --  A typedef

		Special = { fg = cp.light_pink }, -- (preferred) any special symbol
		SpecialChar = { fg = cp.magenta }, --  special character in a constant
		Tag = { fg = cp.red }, --    you can use CTRL-] on this
		Delimiter = { fg = cp.magenta }, --  character that needs attention
		SpecialComment = { fg = cp.string }, -- special things inside a comment
		Debug = { fg = cp.red }, --    debugging statements

		-- ("Ignore", below, may be invisible...)
		-- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error = { fg = cp.err_sev, bg = cp.base, bold = true }, -- (preferred) any erroneous construct

		Todo = { fg = cp.warn, bg = cp.base, bold = true }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
	}
end
return M
