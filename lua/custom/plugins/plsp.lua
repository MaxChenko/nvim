vim.lsp.config("postgres_lsp", {
  cmd = { "postgres-language-server", "lsp-proxy" },  })
vim.lsp.enable("postgres_lsp")
