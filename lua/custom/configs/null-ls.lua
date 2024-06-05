local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!

  -- typescript / javascript
  -- b.diagnostics.eslint_d,
  -- b.code_actions.eslint_d,

  b.formatting.prettier.with { filetypes = { "yaml", "html", "markdown", "css", "json" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- Godot / gdscript
  b.formatting.gdformat,
  b.diagnostics.gdlint,

  -- python
  b.formatting.black,
  b.diagnostics.flake8,

  -- ruby
  b.formatting.standardrb,
  b.diagnostics.standardrb,


  --rust 
  b.formatting.rustfmt,
  --go
  b.code_actions.impl,
  b.code_actions.gomodifytags,
  b.code_actions.refactoring,
  b.diagnostics.golangci_lint,
  b.formatting.gofumpt,
  b.formatting.goimports,
  b.formatting.goimports_reviser,

  -- yaml /github actions
  b.diagnostics.actionlint,
  b.diagnostics.yamllint,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
