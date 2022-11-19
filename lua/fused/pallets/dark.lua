local colors = {
    surface = "#101521",
    background = "#0F111A",
    surface2 = "#1a1b26",
    dark = "#1a1b26",

    columbia_blue = "#D3F1F0",
    antique_white = "#faebd7",
    text = "#CAD3F5",
    ceil = "#8991BA",
    white = "#abb2bf",

    pink = "#FF79C6",
    china_pink = "#DE6FA1",
    cyclamen = "#f56fa1",
    candy_pink = "#e4717a",
    baker_miller_pink = "#ff91af",
    red = "#E78284",
    pink_red = "#ff5370",
    cinnabar = "#fa4824",

    lavender_magenta = "#ee82ee",
    magenta_dark = "#BD93F9",
    blue = "#948AE3",
    light_blue = "#EBBBFF",
    very_light_malachite_green = "#71F094",
    one_dark_green = "#98C379",
    limerick_green = "#9FC131",
    ocean_blue2 = "#80FFBB",
    ocean_blue = "#73daca",
    teal = "#1abc9c",

    flax = "#D6D58E",
    yellow = "#FCCF6C",
    orange = "#FFB86C",
    earth_yellow = "#D19A66",
    big_foot_feet = "#e88e5a",

    aero = "#4FC1FF",
    sky = "#0FCFFF",
    light_sky = "#36F9F6",

    baby_blue = "#89cff0",
    cyan = "#8BE9FD",
    french_sky_blue = "#88a5fe",

    compliment0 = "#292e42",
    compliment1 = "#494D64",
    compliment2 = "#7F849C",
    compliment3 = "#373844",
    compliment4 = "#282A36",
    compliment5 = "#6272A4",
    compliment6 = "#181926",

    -- ts-rainbow brackets pair colors
    ts_rainbow_aqua = "#8ec07c",
    ts_rainbow_pruple = "#d3869b",
    ts_rainbow_blue = "#83a598",
}

local M = {}
M.pallete = {
    bg_windows = colors.surface,
    bg_windows2 = colors.surface2,
    bg = colors.background,
    dark = colors.dark,
    white = colors.white,
    text = colors.text,
    string = colors.ceil,
    border = colors.dark,

    warn = colors.yellow,
    err = colors.pink_red,
    err_sev = colors.cinnabar,

    folds = colors.ceil,
    search = colors.very_light_malachite_green,

    func = colors.red,
    property = colors.sky,
    variable = colors.french_sky_blue,
    method = colors.lavender_magenta,
    keywords = colors.blue,
    const = colors.big_foot_feet,

    cp0 = colors.compliment0,
    cp1 = colors.compliment1,
    cp2 = colors.compliment2,
    cp3 = colors.compliment3,
    cp4 = colors.compliment4,
    cp5 = colors.compliment5,
    cp6 = colors.compliment6,

    pink = colors.china_pink,
    pink2 = colors.pink,
    light_pink = colors.baker_miller_pink,
    red = colors.red,
    wred = colors.candy_pink,
    deep_pink = colors.cyclamen,
    magenta = colors.lavender_magenta,
    dmagenta = colors.magenta_dark,
    wmagenta = colors.blue,
    teal = colors.teal,
    lgreen = colors.one_dark_green,
    dgreen = colors.limerick_green,
    lyellow = colors.flax,
    dyellow = colors.orange,
    radish_pink = colors.big_foot_feet,
    blue = colors.aero,
    wblue = colors.cyan,
    sky_blue = colors.french_sky_blue,

    -- @brackets pairs colors
    ts_aqua = colors.ts_rainbow_aqua,
    ts_deep_yellow = colors.big_foot_feet,
    ts_purple = colors.ts_rainbow_purple,
    ts_yellow = colors.yellow,
    ts_cyan = colors.sky,
}

return M
