local M = {}

local hl = require("fused.utils").get

M.set = function(cp)
    require("fused.groups.editor").set_editor_hl(hl, cp)
    require("fused.groups.syntax").set_syntax_hl(hl, cp)

    require("fused.groups.tree-sitter").set_tree_sitter_hl(hl, cp)
    require("fused.groups.lsp").set_lsp_hl(hl, cp)
end

M.set_plugins = function(cp)
    require("fused.groups.plugins.todo-comments").set_todo_comments_hl(hl, cp)
    require("fused.groups.plugins.neorg").set_neorg_hl(hl, cp)
    require("fused.groups.plugins.lspsaga").set_lspsaga_hl(hl, cp)
    require("fused.groups.plugins.nvim-tree").set_nvim_tree_hl(hl, cp)
    require("fused.groups.plugins.cmp").set_cmp_hl(hl, cp)
    require("fused.groups.plugins.indent-blank-line").set_indent_blank_line_hl(
        hl,
        cp
    )
    require("fused.groups.plugins.harpoon").set_harpoon_hl(hl, cp)
    require("fused.groups.plugins.trouble").set_trouble_hl(hl, cp)
    require("fused.groups.plugins.telescope").set_telescope_hl(hl, cp)
    require("fused.groups.plugins.diffview").set_diffview_hl(hl, cp)
    require("fused.groups.plugins.ts-rainbow").set_ts_rainbow_hl(hl, cp)
end
return M
