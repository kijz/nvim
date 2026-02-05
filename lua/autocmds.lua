require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd

autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("HighlightYank", { clear = true }),
  callback = function()
    vim.highlight.on_yank { higroup = "IncSearch", timeout = 200 }
  end,
})

vim.schedule(function()
  local cmp_ok, cmp = pcall(require, "cmp")
  if cmp_ok then
    local current_config = cmp.get_config()
    current_config.mapping["<Down>"] = cmp.mapping.select_next_item()
    current_config.mapping["<Up>"] = cmp.mapping.select_prev_item()
    cmp.setup(current_config)
  end
end)
