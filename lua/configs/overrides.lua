local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "bash",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "jsdoc",
    "svelte",
    "c",
    "markdown",
    "markdown_inline",
    "python",
    "rust",
    "java",
  },
  indent = {
    enable = true,
    -- disable = {
    -- 	"python",
    -- },
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}

M.mason = {
  -- ensure_installed = {
  -- 	-- lua stuff
  -- 	"lua-language-server",
  -- 	"stylua",
  --
  -- 	-- web dev stuff
  -- 	"css-lsp",
  -- 	"html-lsp",
  -- 	"typescript-language-server",
  -- 	"deno",
  -- 	"prettierd",
  -- 	"eslint-lsp",
  -- 	"tailwindcss-language-server",
  --
  -- 	-- c/cpp stuff
  -- 	"clangd",
  -- 	"clang-format",
  --
  -- 	-- shell stuff
  -- 	"bash-language-server",
  -- 	"shellcheck",
  -- 	"shfmt",
  --
  -- 	-- "hyprlang",
  --
  -- 	-- python stuff
  -- 	"pyright",
  -- 	"flake8",
  -- 	"black",
  --
  -- 	-- rust stuff
  -- 	"rust-analyzer",
  -- 	"codelldb",
  -- },
}

-- colorize indent lines
M.blankline = {
  indent = {
    highlight = {
      "IndentBlanklineIndent1",
      "IndentBlanklineIndent2",
      "IndentBlanklineIndent3",
      "IndentBlanklineIndent4",
      "IndentBlanklineIndent5",
      "IndentBlanklineIndent6",
    },
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- github copilot setup
M.copilot = {
  suggestion = {
    enable = false,
  },
  panel = {
    enable = false,
  },
}
M.nvimcmp = {
  sources = {
    { name = "nvim_lsp", group_index = 2 },
    { name = "luasnip", group_index = 2 },
    { name = "buffer", group_index = 2 },
    { name = "nvim_lua", group_index = 2 },
    { name = "path", group_index = 2 },
    -- { name = "copilot", group_index = 2 },
    -- { name = "cmp_ai" },
  },
}

M.ccc = {
  highlighter = {
    auto_enable = false,
    lsp = false,
  },
}

return M
