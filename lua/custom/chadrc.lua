---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "penumbra_light",
  theme_toggle = { "penumbra_light", "catppuccin" },

  hl_override = vim.tbl_deep_extend("force", highlights.override, {
    Cursor = { bg = "#FFCCA5" },
  }),
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
