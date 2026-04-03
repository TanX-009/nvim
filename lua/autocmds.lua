require "nvchad.autocmds"

vim.api.nvim_create_autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.keymap.set("n", "<CR>", "<CR>:cclose | lclose<CR>", { buffer = true })
  end,
})
