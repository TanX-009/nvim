local M = {}
local colors = dofile(os.getenv("HOME") .. "/.colors/lua/colors.lua")

M.base_30 = {
	white = colors.onSurface,
	darker_black = colors.surfaceContainerLowest,
	black = colors.surfaceContainer, --  nvim bg
	black2 = colors.surface,
	one_bg = colors.surfaceContainer,
	one_bg2 = colors.surfaceContainerHigh,
	one_bg3 = colors.surfaceContainerHighest,
	grey = colors.surfaceBright,
	grey_fg = colors.surfaceVariant,
	grey_fg2 = colors.outline,
	light_grey = colors.onSurfaceVariant,
	red = colors.red,
	baby_pink = colors.magenta,
	pink = colors.deeppink,
	green = colors.limegreen,
	vibrant_green = colors.chartreuse,
	blue = colors.blue,
	nord_blue = colors.royalblue,
	yellow = colors.gold,
	sun = colors.darkorange,
	purple = colors.mediumpurple,
	dark_purple = colors.purple,
	teal = colors.mediumaquamarine,
	orange = colors.orange,
	cyan = colors.cyan,
	line = colors.outlineVariant, -- for lines like vertsplit
	statusline_bg = colors.surfaceContainerLow,
	lightbg = colors.surfaceContainer,
	pmenu_bg = colors.primary,
	folder_bg = colors.secondary,
}

M.base_16 = {
	base00 = colors.term0,
	base01 = colors.term1,
	base02 = colors.term2,
	base03 = colors.term3,
	base04 = colors.term4,
	base05 = colors.term5,
	base06 = colors.term6,
	base07 = colors.term7,
	base08 = colors.term8,
	base09 = colors.term9,
	base0A = colors.term10,
	base0B = colors.term11,
	base0C = colors.term12,
	base0D = colors.term13,
	base0E = colors.term14,
	base0F = colors.term15,
}

return M
