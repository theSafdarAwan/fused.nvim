--- Adds Utility functions.
local vim = vim
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
	-- need to get rid of previous pallet polished config
	for opt, val in pairs(opts) do
		M[opt] = val
	end
end

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

--- Converts styles from a string to a table and returns it.
---@return table of styles
M.format_styles = function(styles_str)
	local styles_strs = vim.split(styles_str, ",", { plain = true, trimempty = true })
	local styles = {}
	for idx, style in ipairs(styles_strs) do
		local is_false = string.find(style, "no")
		if is_false then
			style = string.sub(style, 3, -1)
			styles[style] = false
		elseif not is_false then
			styles[style] = true
		end
		styles_strs[idx] = nil
	end
	return styles
end

--- get the colors for given flavour
---@param flavour string theme flavour name.
---@return table colors pallet.
M.get_colors = function (flavour)
	local pallet = require("fused.pallets." .. flavour).pallet
	return pallet
end

--- Replaces the `.` char in plugin name with `-`
---@param name string plugin name to format
---@return string formatted plugin name.
M.format_plugin_name = function(name)
	local idx = 1
	while true do
		idx = string.find(name, "[.]", idx + 1)
		if not idx then
			break
		end
		local str_start = string.sub(name, 1, idx - 1)
		local str_finish = string.sub(name, idx + 1, -1)
		name = str_start .. "-" .. str_finish
	end
	return name
end

return M
