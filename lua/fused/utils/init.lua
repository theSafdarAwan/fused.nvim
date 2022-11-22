local vim = vim
local M = {}

M.default_config = {
    flavour = "dark",
    plugins_integration = {
        -- @names of the plguins
        cmp = true,
        diffview = true,
        harpoon = true,
        neogit = true,
        indentblankline = true,
        lspsaga = true,
        neorg = true,
        nvimtree = true,
        telescope = true,
        todocomments = true,
        trouble = true,
        tsrainbow = true,
    },
    -- accepts table of custom higlights
    custom = {},
}

M.set_theme = function(conf)
    -- maybe in future will accept multiple flavours
    local flavour = conf["flavour"] or "dark"

    -- setting the pallete for the theme not a clean way but works
    M.pallete = require("fused.pallets." .. flavour).pallete

    -- default plugins if not plugins table was provided
    local default_pluigns = M.default_config.plugins_integration

    -- @normal highlights set normal highlights
    require("fused.groups").set()

    -- @plugins set highlights for the plugins
    if conf.plugins_integration == true then
        require("fused.groups").set_plugins(default_pluigns)
    elseif conf.plugins_integration == false then
        return
    elseif type(conf.plugins_integration) == "nil" then
        require("fused.groups").set_plugins(default_pluigns)
    else
        -- create a copy of the default_plugins table and check if a plugin
        -- config was supplied from the user then delete that plugin from the
        -- stack if its value was false or nil
        local plugins_tbl = vim.deepcopy(M.default_config.plugins_integration)
        for k, v in pairs(conf.plugins_integration) do
            if not v then
                plugins_tbl[k] = nil
            end
        end
        require("fused.groups").set_plugins(plugins_tbl)
    end

    -- @custom set highlights for custom groups set by user
    if conf.custom then
        local hl = require("fused.utils.lib.higlighter").set_hl
        -- local i = 1
        for k, v in pairs(conf.custom) do
            -- TODO: work on the style thing
            -- check if the styles are available then set the styles
            -- if type(k.styles) == "string" then
            --     local st = require("fused.utils.higlighter").style(k.styles)
            --     for _, st_name in pairs(st) do
            --         k[st_name] = true
            --     end
            --     table.remove(k.styles, i)
            --     hl(tostring(k), v)
            -- else
            -- hl(tostring(k), v)
            -- end
            -- i = 1 + i
            hl(tostring(k), v)
        end
    end
end

return M
