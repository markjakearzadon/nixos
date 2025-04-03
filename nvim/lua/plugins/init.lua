return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
        "rust-analyzer", "python-lsp-server", "elixirls", "asm_lsp", "jdtls"
  		},
  	},
  },
  
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css", "rust",
        "nix", "elixir", "asm",
        "java"
  		},
  	},
  },
}
