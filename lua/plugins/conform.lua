return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      go = { "goimports_reviser", "golines", "gofumpt" },
    },
    format_on_save = {
      lsp_fallback = true,
      timeout_ms = 1000,
    },
  },
}
