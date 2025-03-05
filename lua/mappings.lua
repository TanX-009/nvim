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

-- lazygit
map("n", "<leader>lg", function()
  require("lazygit").lazygit()
end, { desc = "LazyGit" })

-- spectre
map("n", "<leader>sr", function()
  require("spectre").open()
end, { desc = "Replace in files (Spectre)" })

-- ccc
map("n", "<leader>pc", "<cmd> CccPick <CR>", { desc = "Pick color" })

-- neck pain
map("n", "<CS-n>", function()
  local tree = require "nvim-tree"
  local tree_api = require "nvim-tree.api"
  local preset_width = tree.get_config().view.width
  local width = vim.go.columns * 0.35

  if tree_api.tree.is_visible() then
    tree_api.tree.close()
    tree_api.tree.resize { absolute = preset_width }
  else
    tree_api.tree.open()
    tree_api.tree.resize { absolute = width }
  end
end, { desc = "Open NVIM Tree to center the buffer to bring it to the center" })
