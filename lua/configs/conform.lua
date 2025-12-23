--type conform.options
local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    -- lua
    lua = { "stylua" },

    -- web dev stuff
    css = { "prettierd" },
    html = { "prettierd" },
    javascript = { "biome", "prettierd" },
    javascriptreact = { "biome", "prettierd" },
    typescript = { "biome", "prettierd" },
    typescriptreact = { "biome", "prettierd" },
    svg = { "xmlformatter" },

    -- conf
    json = { "prettierd" },
    yaml = { "yamlfmt" },

    -- shell
    sh = { "shfmt" },
    fish = { "fish_indent" },

    -- python
    python = { "black" },

    -- rust
    rust = { "rustfmt" },

    -- markdown
    markdown = { "prettierd" },
  },

  -- adding same formatter for multiple filetypes can look too much work for some
  -- instead of the above code you could just use a loop! the config is just a table after all!

  format_on_save = function(bufnr)
    -- Disable with a global or buffer-local variable
    if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
      return
    end
    return { timeout_ms = 500, lsp_format = "fallback" }
  end,
}

require("conform").setup(options)
