local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    javascript = { "biome" },
    typescript = { "biome" },
    javascriptreact = { "biome" },
    typescriptreact = { "biome" },
    json = { "biome" },
    go = { "gofumpt", "goimports" },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
