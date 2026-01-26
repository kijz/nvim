require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- tabs
map("n", "<leader>tf", "<cmd>tabfirst<CR>", { desc = ":tabfirst" })
map("n", "<leader>tl", "<cmd>tablast<CR>", { desc = ":tablast" })
map("n", "<leader>tp", "<cmd>tabprevious<CR>", { desc = ":tabprevious" })
map("n", "<leader>tn", "<cmd>tabnext<CR>", { desc = ":tabnext" })

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
map("n", "<leader>gh", function()
  require("gitsigns").setloclist()
end, { desc = "Hunk locations" })

map("n", "<leader>gha", function()
  require("gitsigns").setloclist('all')
end, { desc = "Hunk locations all" })

map("n", "<leader>cs", function()
  require("gitsigns").show_commit()
end, { desc = "Commit Show" })

map("n", "<leader>gd", function()
  require("gitsigns").diffthis()
end, { desc = "Git Diff" })

map("n", "<leader>gD", function()
  require("gitsigns").diffthis('~')
end, { desc = "Git Diff All" })

map("n", "<leader>sh", function()
  require("gitsigns").stage_hunk()
end, { desc = "Stage Hunk" })

map("n", "<leader>uh", function()
  require("gitsigns").undo_stage_hunk()
end, { desc = "Undo stage Hunk" })

map("n", "<leader>sb", function()
  require("gitsigns").stage_buffer()
end, { desc = "Stage Buffer" })

map("n", "<leader>rb", function()
  require("gitsigns").reset_buffer()
end, { desc = "reset buffer" })

map("n", "<leader>rh", function()
  require("gitsigns").reset_hunk()
end, { desc = "Reset Hunk" })

map("n", "<leader>ph", function()
  require("gitsigns").preview_hunk()
end, { desc = "Preview Hunk" })

map("n", "]c", function()
  require("gitsigns").next_hunk()
end, { desc = "Next Hunk" })

map("n", "[c", function()
  require("gitsigns").prev_hunk()
end, { desc = "Previous Hunk" })

-- Git
-- map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open :LazyGit" })
map("n", "<leader>gg", "<cmd>Neogit<CR>", { desc = "Open :Neogit" })
map("n", "<leader>ggd", "<cmd>DiffviewOpen origin/main...HEAD --imply-local<CR>", { desc = "Diff with origin/main" })
map("n", "<leader>ggc", "<cmd>DiffviewClose<CR>", { desc = "Close diff" })

-- LSP
map("n", "<leader>lf", function()
  vim.diagnostic.open_float { border = "rounded" }
end, { desc = "Floating diagnostic" })

map({ "n", "v" }, "<leader>ca", function()
  vim.lsp.buf.code_action()
end, { desc = "Code action" })

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
