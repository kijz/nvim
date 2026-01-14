require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")


-- screenshots
map("v", "<leader>sc", ":Silicon<CR>", { desc = "[s]creenshot [c]ode"})

-- Tabufline
map("n", "<leader>xa", function()
  require("nvchad.tabufline").closeAllBufs(true)
end, { desc = "Close all buffers" })

map("n", "<leader>xo", function()
  require("nvchad.tabufline").closeAllBufs(false)
end, { desc = "Close all buffers except current" })

-- DAP
map("n", "<leader>tb", function()
  require("dap").toggle_breakpoint()
end, { desc = "[t]oggle [b]reakpoint" })

map("n", "<leader>dc", function()
  require("dap").continue()
end, { desc = "[d]ebug [c]ontinue" })

map("n", "<leader>dt", function()
  require("dap").terminate()
end, { desc = "[d]ap [t]erminate" })

map("n", "<leader>so", function()
  require("dap").step_over()
end, { desc = "[s]tep [o]ver code" })

map("n", "<leader>si", function()
  require("dap").step_into()
end, { desc = "[s]tep [i]nto code" })

map("n", "<leader>dr", function()
  require("dap").repl.open()
end, { desc = "Inspect state via DAP REPL" })

-- Gitsigns
map("n", "<leader>gq", function()
  require("gitsigns").setloclist()
end, { desc = "Hunk locations" })

map("n", "<leader>gh", function()
  require("gitsigns").setloclist()
end, { desc = "Hunk locations" })

-- LazyGit
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open :LazyGit" })

-- Telescope (LSP + Git + Diagnostics + Symbols + Grep)
map("n", "gr", function()
  require("telescope.builtin").lsp_references()
end, { desc = "[g]o [r]eference" })

map("n", "gd", function()
  require("telescope.builtin").lsp_definitions()
end, { desc = "[g]o [d]efinition" })

map("n", "gi", function()
  require("telescope.builtin").lsp_implementations()
end, { desc = "[g]o [i]mplementation" })

map("n", "gt", function()
  require("telescope.builtin").lsp_type_definitions()
end, { desc = "[g]o [t]ype definition" })

map("n", "<leader>q", function()
  require("telescope.builtin").diagnostics({ bufnr = 0 })
end, { desc = "Search buffer diagnostics" })

map("n", "<leader>qq", function()
  require("telescope.builtin").diagnostics()
end, { desc = "Search diagnostics" })

map("n", "<leader>gs", function()
  require("telescope.builtin").git_status()
end, { desc = "[g]it [s]tatus" })

map("n", "<leader>gc", function()
  require("telescope.builtin").git_bcommits()
end, { desc = "[g]it buffer [c]ommit" })

map("n", "<leader>gf", function()
  require("telescope.builtin").git_files()
end, { desc = "[g]it [f]iles" })

map("n", "<leader>fs", function()
  require("telescope.builtin").lsp_document_symbols()
end, { desc = "[f]ind [s]ymbols" })

map("n", "<leader>ws", function()
  require("telescope.builtin").lsp_dynamic_workspace_symbols()
end, { desc = "[w]orkspace [s]ymbols" })

map("n", "fw", function()
  require("telescope.builtin").grep_string()
end, { desc = "[f]ind [W]ord under cursor" })

map("v", "<leader>gc", function()
  require("telescope.builtin").git_bcommits_range()
end, { desc = "[g]it buffer [c]ommit range" })
