return {
  -- { "hrsh7th/nvim-cmp", enabled = false }, -- disable inbuilt
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  { "linrongbin16/gitlinker.nvim", cmd = "GitLink",
    opts = {},
    keys = {
      { "<leader>gy", "<cmd>GitLink<cr>", mode = { "n", "v" }, desc = "Yank git link" },
      { "<leader>gY", "<cmd>GitLink!<cr>", mode = { "n", "v" }, desc = "Open git link" },
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true,
        ignore = false,
      },
      filters = {
        dotfiles = false,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- { import = "nvchad.blink.lazyspec" },
  -- {
  --   "saghen/blink.cmp",
  --   dependencies = "rafamadriz/friendly-snippets",
  --   opts = {
  --     keymap = {
  --       preset = "default",
  --       ["<CR>"] = { "accept", "fallback" },
  --     },
  --     sources = {
  --       default = { "lsp", "path", "buffer" },
  --       snippet = {
  --         "luasnip",
  --       },
  --     },
  --   },
  -- },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "typescript",
        "tsx",
        "javascript",
        "json",
        "go",
        "python",
        "yaml",
        "markdown",
      },
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function()
      require "configs.treesitter"
    end,
  },
  -- Treesitter context
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "VeryLazy",
    config = function()
      require("treesitter-context").setup {
        enable = true,
        max_lines = 3,
        trim_scope = "outer",
      }
    end,
  },
  {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    config = function()
      require("silicon").setup {
        font = "JetBrainsMono Nerd Font=34;Noto Color Emoji=34",
        theme = "Dracula",
        background = "#e1e1e1",
      }
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "NeogitOrg/neogit",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      "nvim-telescope/telescope.nvim", -- optional
    },
    cmd = "Neogit",
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      picker = {},
      input = {},
    },
  },
  {
    "sudo-tee/opencode.nvim",
    lazy = false,
    config = function()
      require("opencode").setup {
        picker = "snacks",
        keymap = {
          input_window = {
            ["<C-s>"] = { "submit_input_prompt", mode = { "n", "i" } },
          },
        },
      }
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          anti_conceal = { enabled = false },
          file_types = { "markdown", "opencode_output" },
        },
        ft = { "markdown", "Avante", "copilot-chat", "opencode_output" },
      },
      -- Optional, for file mentions and commands completion, pick only one
      -- "saghen/blink.cmp",
      "hrsh7th/nvim-cmp",

      -- Optional, for file mentions picker, pick only one
      "folke/snacks.nvim",
      -- "nvim-telescope/telescope.nvim",
      -- 'ibhagwan/fzf-lua',
      -- 'nvim_mini/mini.nvim',
    },
  },
  {
    "ThePrimeagen/99",
    lazy = false,
    config = function()
      require "configs.ninetynine"
    end,
  },
}
