require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "yamlls",
  "bashls",
  "biome",
  "gopls",
  "lua-language-server",
  "ts_ls",
  "golangci_lint_ls",
}

-- Configure golangci-lint-langserver before enabling
vim.lsp.config["golangci_lint_ls"] = {
  cmd = { "golangci-lint-langserver" },
  filetypes = { "go", "gomod" },
  root_markers = { ".git", "go.mod" },
  settings = {
    init_options = {
      command = {
        "golangci-lint",
        "run",
        "--out-format",
        "json",
        "--issues-exit-code=1",
      },
    },
  },
}

vim.lsp.enable(servers)
