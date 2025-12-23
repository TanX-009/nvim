require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- tabufline
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })
-- to right tab
map("n", "<A-.>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })
-- to left tab
map("n", "<A-,>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })
-- move right
map("n", "<AS-.>", function()
  require("nvchad.tabufline").move_buf(1)
end, { desc = "buffer move right" })
-- move left
map("n", "<AS-,>", function()
  require("nvchad.tabufline").move_buf(-1)
end, { desc = "buffer move left" })
-- close buffer
map("n", "<A-w>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- restart
-- lsp
map("n", "<leader>lr", "<cmd>LspRestart<CR>", { desc = "Restart LSP" })
-- nvim tree
map("n", "<leader>tr", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh NvimTree" })

-- spectre
map("n", "<leader>sr", function()
  require("spectre").open()
end, { desc = "Replace in files (Spectre)" })

-- ccc
map("n", "<leader>pc", "<cmd>CccPick<CR>", { desc = "Pick color" })

-- neck pain
map("n", "<CS-n>", function()
  local tree = require "nvim-tree"
  local tree_api = require "nvim-tree.api"
  local preset_width = tree.get_config().view.width
  local width = math.floor(vim.go.columns * 0.35 + 0.5)

  if tree_api.tree.is_visible() then
    tree_api.tree.close()
    tree_api.tree.resize { absolute = preset_width }
  else
    tree_api.tree.open()
    tree_api.tree.resize { absolute = width }
  end
end, { desc = "Open NVIM Tree to center the buffer to bring it to the center" })

-- git blame
map("n", "<leader>gb", "<cmd>Gitsigns blame<CR>", { desc = "Open gitsigns blame view" })

-- TERMINAL
-- lazygit
map({ "n", "t" }, "<A-l>", function()
  require("nvchad.term").toggle {
    pos = "float",
    cmd = "lazygit",
    id = "lazygit",
    clear_cmd = true,
    float_opts = {
      width = 1,
      height = 1,
    },
  }
end, { desc = "toggle lazygit terminal" })
-- slumber
map({ "n", "t" }, "<A-s>", function()
  require("nvchad.term").toggle {
    pos = "float",
    cmd = "slumber",
    id = "slumber",
    clear_cmd = true,
    float_opts = {
      width = 1,
      height = 1,
    },
  }
end, { desc = "toggle slumber terminal" })
