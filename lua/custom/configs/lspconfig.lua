local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
-- clangd multiple different client offset_encodings fix
capabilities.offsetEncoding = { "utf-16" }

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  "html",
  "cssls",
  "tsserver",
  "tailwindcss",
  "biome",
  "clangd",
  "gdscript",
  "pyright",
  "glsl_analyzer"
  --  "ruby_ls",
  -- "standardrb",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- use ruby default packed lsp
-- CURRENTLY NOT WORKING WITH ASDF
-- lspconfig.standardrb.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   cmd = { "~/.asdf/shims/standardrb", "--lsp" },
--   filetypes = { "rb", "ruby" },
-- }

-- connect to Godot Application LSP
local port = os.getenv "GDScript_Port" or "6005"
lspconfig.gdscript.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "nc", "localhost", port },
  filetypes = { "gd", "gdscript", "gdscript3" },
  flags = {
    debounce_text_changes = 150,
  },
}

local dap = require "dap"

dap.adapters.godot = {
  type = "server",
  host = "127.0.0.1",
  port = 6006,
}

dap.configurations.gdscript = {
  {
    launch_game_instance = false,
    launch_scene = false,
    name = "Launch scene",
    project = "${workspaceFolder}",
    request = "launch",
    type = "godot",
  },
}
