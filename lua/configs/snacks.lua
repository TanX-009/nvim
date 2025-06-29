local header = {
  "                              ",
  "⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣶⣶⣿⣿⣿⣿⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀",
  "⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀",
  "⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀",
  "⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆",
  "⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷",
  "⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿",
  "⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁⠈⠻⣿⡿⠁⠈⠙⢿⣿⣿⣿⡇",
  "⠀⠙⠙⢿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⣸⣿⣿⣿⠀",
  "⠀⡞⠀⢈⣿⣿⣿⣿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣧⠀⢠⣿⣿⣿⠇⠀",
  "⢈⣽⣦⣼⣿⣿⣿⣡⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⠀⣼⣿⣿⠏⠀⠀",
  "⠸⣿⣿⡿⡟⣿⣿⣿⣿⣶⣶⣶⣤⣤⣤⣤⣤⣼⣿⣿⣿⣿⡟⠰⠿⠛⠁⠀⠀⠀",
  "⠀⠙⢿⣹⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⠀⠹⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⢿⣶⣿⣿⣿⣿⣿⣿⠟⡙⣿⣿⣿⣿⣧⡀⠹⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⡟⢸⡇⢸⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠈⣿⢿⣿⣿⣿⣇⠘⠁⢸⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⢹⣼⣿⢸⣿⣿⣶⠀⢸⣿⣿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⢈⡇⣿⡇⣿⣿⣿⣆⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠉⠻⠧⢹⣿⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "                              ",
  "                              ",
  "                              ",
}

local Snacks = require "snacks"

---@type snacks.Config
local M = {
  ---@class snacks.bigfile.Config
  ---@field enabled? boolean
  bigfile = {
    notify = true, -- show notification when big file detected
    size = 1.5 * 1024 * 1024, -- 1.5MB
    line_length = 1000, -- average line length (useful for minified files)
    -- Enable or disable features when big file detected
    ---@param ctx {buf: number, ft:string}
    setup = function(ctx)
      if vim.fn.exists ":NoMatchParen" ~= 0 then
        vim.cmd [[NoMatchParen]]
      end
      Snacks.util.wo(0, { foldmethod = "manual", statuscolumn = "", conceallevel = 0 })
      vim.b.minianimate_disable = true
      vim.schedule(function()
        if vim.api.nvim_buf_is_valid(ctx.buf) then
          vim.bo[ctx.buf].syntax = ctx.ft
        end
      end)
    end,
  },
  lazygit = {},

  ---@class snacks.dim.Config
  dim = {
    ---@type snacks.scope.Config
    scope = {
      min_size = 5,
      max_size = 20,
      siblings = true,
    },
    -- animate scopes. Enabled by default for Neovim >= 0.10
    -- Works on older versions but has to trigger redraws during animation.
    ---@type snacks.animate.Config|{enabled?: boolean}
    animate = {
      -- enabled = vim.fn.has "nvim-0.10" == 1,
      enabled = false,
      easing = "outQuad",
      duration = {
        step = 20, -- ms per step
        total = 300, -- maximum duration
      },
    },
    -- what buffers to dim
    filter = function(buf)
      return vim.g.snacks_dim ~= false and vim.b[buf].snacks_dim ~= false and vim.bo[buf].buftype == ""
    end,
  },

  -- zen = {
  --   enabled = true,
  --   toggles = {
  --     dim = true,
  --     git_signs = true,
  --     mini_diff_signs = true,
  --     diagnostics = true,
  --     inlay_hints = true,
  --   },
  --   win = { style = "zen" },
  -- },
  -- styles = {
  --   zen = {
  --     width = 100,
  --   },
  -- },
}
return M
