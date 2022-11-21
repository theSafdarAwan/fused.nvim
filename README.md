# fused.nvim

> <a style="color: Yellow;">NOTE</a>: This plugin is under development i have yet to 
> implement other a lot of features but feel free to use it.

A 🌈 colorscheme fused between different color schemes

## lua
<img width="900" src="./assets/images/lua.png" alt="Screenshot" />

## js
<img width="900" src="./assets/images/js.png" alt="Screenshot" />

## css
<img width="900" src="./assets/images/css.png" alt="Screenshot" />

## html
<img width="900" src="./assets/images/html.png" alt="Screenshot" />

You can install this theme using any plugin manager you use:

Using Plug
```vim
Plug 'TheSafdarAwan/fused.nvim'
```
Using packer
```lua
use({ "TheSafdarAwan/fused" })
```

⚙️ Configuration:
```lua
require("fused").setup({
    -- currently only one flavour is available but Pr is welcome
    flavour = "dark",
    --[[
    Enable these plugins if not then set it to false or remove the whole table
    and set the plugins_integration to false.
    ]]
    plugins_integration = {
        -- @names of the plugins
        cmp = true,
        diffview = true,
        harpoon = true,
        indentblankline = true,
        lspsaga = true,
        neorg = true,
        nvimtree = true,
        telescope = true,
        todocomments = true,
        trouble = true,
        tsrainbow = true,
    },
    --[[
    add you highlights here by adding the highlight group name and providing a table for its
    Configuration
    ]]
    custom = {
        DamianConway = { bg = "Red" },
    },
})
```

## TO-DO
- Add more flavors
- Add Highlights
  - Neogit
  - Diffview
  - Packer
  - cmp(add the remaining highlights)
  - vim-matchup
- Add the style option

## Contribution
Well i created this theme on my own. If you want to contribute the create a PR. I
would love that.
