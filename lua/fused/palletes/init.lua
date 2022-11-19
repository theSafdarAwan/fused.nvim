local M = {}
local d = require("fused.palletes.dark")

M.dark_pallete = {
    bg_windows = d.surface,
    bg_windows2 = d.surface2,
    bg = d.background,
    dark = d.dark,
    white = d.white,
    text = d.text,
    string = d.ceil,
    border = d.dark,

    warn = d.yellow,
    err = d.pink_red,
    err_sev = d.cinnabar,

    folds = d.ceil,
    search = d.very_light_malachite_green,

    func = d.red,
    property = d.sky,
    variable = d.french_sky_blue,
    method = d.lavender_magenta,
    keywords = d.blue,
    const = d.big_foot_feet,

    cp0 = d.compliment0,
    cp1 = d.compliment1,
    cp2 = d.compliment2,
    cp3 = d.compliment3,
    cp4 = d.compliment4,
    cp5 = d.compliment5,
    cp6 = d.compliment6,

    pink = d.china_pink,
    pink2 = d.pink,
    light_pink = d.baker_miller_pink,
    red = d.red,
    wred = d.candy_pink,
    deep_pink = d.cyclamen,
    magenta = d.lavender_magenta,
    dmagenta = d.magenta_dark,
    wmagenta = d.blue,
    teal = d.teal,
    lgreen = d.one_dark_green,
    dgreen = d.limerick_green,
    lyellow = d.flax,
    dyellow = d.orange,
    radish_pink = d.big_foot_feet,
    blue = d.aero,
    wblue = d.cyan,
    sky_blue = d.french_sky_blue,

    -- @brackets pairs colors
    ts_aqua = d.ts_rainbow_aqua,
    ts_deep_yellow = d.big_foot_feet,
    ts_purple = d.ts_rainbow_purple,
    ts_yellow = d.yellow,
    ts_cyan = d.sky,
}

return M
