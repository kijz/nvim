require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.opt.relativenumber = true

require('telescope').setup({
  defaults = {
    path_display = { "truncate" }, -- or "truncate", "absolute", "tail"
  },
})
