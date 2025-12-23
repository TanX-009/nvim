local M = {}

M.opts = {
  ensure_installed = { "debugpy" },
  automatic_installation = true,
  handlers = {
    function(config)
      require("mason-nvim-dap").default_setup(config)
    end,
  },
}

return M
