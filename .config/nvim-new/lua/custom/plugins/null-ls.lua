return {
  "nvimtools/none-ls.nvim",
  config = function()
    local none_ls = require("null-ls")
    local formatting = none_ls.builtins.formatting
    local diagnostics = none_ls.builtins.diagnostics

    none_ls.setup({
      sources = {
        formatting.stylua,
        formatting.prettier.with({
          filetypes = {
            "html",
            "json",
            "yaml",
            "yml",
            "markdown",
            "css",
            "typescript",
            "typescriptreact",
            "javascript",
            "javascriptreact",
          },
        }),
        formatting.yamlfmt,
        formatting.sqlfmt,
        formatting.gofumpt,
        formatting.goimports_reviser,
        formatting.golines.with({
          extra_args = { "-m", "128" },
        }),
        diagnostics.golangci_lint,
      },
    })
  end,
}
