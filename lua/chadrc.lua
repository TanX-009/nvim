-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@class ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("highlights")
local theme = require("theme")

M.ui = {
	changed_themes = {
		nord = {
			base_30 = theme.base_30,
			base_16 = theme.base_16,
		},
	},
	theme = "nord",
	theme_toggle = { "nord", "one_light" },

	hl_override = highlights.override,
	hl_add = highlights.add,

	nvdash = require("configs.nvdash"),

	statusline = {
		theme = "minimal",
	},
}

M.plugins = "plugins"

-- check core.mappings for table structure
M.mappings = require("mappings")

return M
