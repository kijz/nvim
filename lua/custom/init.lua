-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
--
-- Indenting
local opt = vim.opt

-- relativenumber
opt.number = true
opt.relativenumber = true

-- opt.expandtab = true
-- opt.shiftwidth = 4
-- opt.smartindent = true
-- opt.tabstop = 4
-- opt.softtabstop = 4

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight_yank", {}),
  desc = "Hightlight selection on yank",
  pattern = "*",
  callback = function()
    vim.highlight.on_yank { higroup = "IncSearch", timeout = 200 }
  end,
})
-- Remap C-i to ensure it works as intended
vim.api.nvim_set_keymap('n', '<C-i>', '<C-i>', { noremap = true, silent = true })
-- Optional: Make sure C-o is not remapped
vim.api.nvim_set_keymap('n', '<C-o>', '<C-o>', { noremap = true, silent = true })

-- fix for kitty
-- Set guicursor option
vim.o.guicursor = "n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor"

-- Set up autocommands
vim.api.nvim_exec(
  [[
  augroup kitty_cursor
    autocmd!
    autocmd Colorscheme * set guicursor=n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor
  augroup END
]],
  false
)
