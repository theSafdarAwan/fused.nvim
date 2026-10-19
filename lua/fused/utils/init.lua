--- Adds Utility functions.
local M = {}

--- Loads the highlight group.
---@param group string name of the highlight group to load.
---@param hls table opts for the highlight group.
M.set_hl = function(group, hls)
	vim.api.nvim_set_hl(0, group, hls)
end

--- Exports the opts which are utilised when setting opts for highlight groups.
---@param opts table opts like background_transparent, italics, etc.
M.export_opts = function(opts)
	for opt, val in pairs(opts) do
		M[opt] = val
	end
end

---@table plugins asked for with `require("fused").load_plugin(name)`. They are kept so
--- the highlights of these plugins are also loaded when the theme is (re)loaded later,
--- for example when you change the colorscheme, no matter in which order things ran.
M.requested_plugins = {}

---@table hooks names. To be used later for executing autocmds when theme flavour changes.
M.hooks_names = {}

--- Adds hooks to the stack
---@param hooks table
M.__add_hooks = function(hooks)
	for hook_name, callback in pairs(hooks) do
		hook_name = tostring(hook_name)
		-- add hook name to the stack
		M.hooks_names[hook_name] = {}
		vim.api.nvim_create_autocmd("User", {
			group = vim.api.nvim_create_augroup("fused hook: " .. hook_name, { clear = true }),
			pattern = hook_name,
			callback = callback,
		})
	end
end

--- Converts styles from a string like `"bold,noitalic"` to a table and returns it.
--- Names are trimmed and a leading `no` turns the style off. `nocombine` is a real style
--- of its own and is kept as it is.
---@return table of styles
M.format_styles = function(styles_str)
	local styles = {}
	for _, style in ipairs(vim.split(styles_str, ",", { plain = true, trimempty = true })) do
		style = style:match("^%s*(.-)%s*$")
		if style ~= "" then
			if style ~= "nocombine" and style:sub(1, 2) == "no" then
				styles[style:sub(3)] = false
			else
				styles[style] = true
			end
		end
	end
	return styles
end

--- get the colors for given flavour
---@param flavour string theme flavour name.
---@return table colors pallet.
M.get_colors = function(flavour)
	return require("fused.pallets." .. flavour).pallet
end

--- Replaces the `.` char in plugin name with `-`, this is how the files for the plugins
--- are named (`nvim-tree.lua` -> `nvim-tree-lua`).
---@param name string plugin name to format
---@return string formatted plugin name.
M.format_plugin_name = function(name)
	return (name:gsub("%.", "-"))
end

return M
