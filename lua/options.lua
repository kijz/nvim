require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.opt.relativenumber = true

-- Tab settings
vim.opt.tabstop = 4        -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4     -- Number of spaces for auto-indent
vim.opt.softtabstop = 4    -- Number of spaces for <Tab> key
-- vim.opt.expandtab = true   -- Convert tabs to spaces

require('telescope').setup({
  defaults = {
    path_display = { "truncate" }, -- or "truncate", "absolute", "tail"
  },
})
