---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  },
}

M.tabufline = {
  n = {
    ["<leader>xa"] = {
      function()
        require("nvchad.tabufline").closeAllBufs()
      end,
      "Close all buffers",
    },
    ["<leader>xo"] = {
      function()
        require("nvchad.tabufline").closeOtherBufs()
      end,
      "Close all buffers except current",
    },
  },
}

M.dap = {
  n = {
    ["<leader>tb"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "[t]oggle [b]reakpoint",
    },
    ["<leader>dc"] = {
      function()
        require("dap").continue()
      end,
      "[d]ebug [c]ontinue",
    },
    ["<leader>so"] = {
      function()
        require("dap").step_over()
      end,
      "[s]tep [o]ver code",
    },
    ["<leader>si"] = {
      function()
        require("dap").step_into()
      end,
      "[s]tep [i]nto code",
    },
    ["<leader>dr"] = {
      function()
        require("dap").repl.open()
      end,
      "inspecting the state via the built-in repl",
    },
  },
}

M.gitsigns = {
  n = {
    ["<leader>gq"] = {
      function()
        require("gitsigns").setloclist()
      end,
      "hunk locations",
    },
    ["<leader>gh"] = {
      function()
        require("gitsigns").setloclist()
      end,
      "hunk locations",
    },
  },
}
M.lazygit = {
  n = {
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "Open :LazyGit" },
  },
}

M.telescope = {
  n = {
    ["gr"] = {
      function()
        require("telescope.builtin").lsp_references()
      end,
      "[g]o [r]eference",
    },
    ["gd"] = {
      function()
        require("telescope.builtin").lsp_definitions()
      end,
      "[g]o [d]efinition",
    },
    ["gi"] = {
      function()
        require("telescope.builtin").lsp_implementations()
      end,
      "[g]o [i]mplementation",
    },
    ["gt"] = {
      function()
        require("telescope.builtin").lsp_type_definitions()
      end,
      "[g]o [t]ype definition",
    },
    ["<leader>q"] = {
      function()
        require("telescope.builtin").diagnostics()
      end,
      "search diagnostics",
    },
    ["<leader>gs"] = {
      function()
        require("telescope.builtin").git_status()
      end,
      "[g]it [s]tatus",
    },
    ["<leader>gc"] = {
      function()
        require("telescope.builtin").git_bcommits()
      end,
      "[g]it buffer [c]ommit",
    },
    ["<leader>gf"] = {
      function()
        require("telescope.builtin").git_files()
      end,
      "[g]it [f]iles",
    },
    ["<leader>fs"] = {
      function()
        require("telescope.builtin").lsp_document_symbols()
      end,
      "[f]ind [s]ymbols",
    },
    ["<leader>ws"] = {
      function()
        require("telescope.builtin").lsp_dynamic_workspace_symbols()
      end,
      "[w]orkspace [s]ymbols",
    },
    ["fw"] = {
      function()
        require("telescope.builtin").grep_string()
      end,
      "[f]ind [W]ord under cursor",
    },

  },
  v = {
    ["<leader>gc"] = {
      function()
        require("telescope.builtin").git_bcommits_range()
      end,
      "[g]it buffer [c]ommit range",
    },
  }
}

-- more keybinds!

return M
