local dap = require "dap"

-- ui
-- require "configs.dap.ui"
-- mason-dap
-- require("mason-nvim-dap").setup(require "configs.dap.mason")

-- debuggers
-- local gdb = require("configs.dap.adapters.gdb")
-- local cppdbg = require("configs.dap.adapters.cppdbg")
local debugpy = require "configs.dap.adapters.debugpy"

dap.adapters.debugpy = debugpy.adapter
-- dap.adapters.gdb = gdb.adapter
-- dap.adapters.cppdbg = cppdbg.adapter

dap.configurations.python = debugpy.config
-- dap.configurations.c = gdb.config
-- dap.configurations.cpp = cppdbg.config
-- dap.configurations.rust = gdb.config
