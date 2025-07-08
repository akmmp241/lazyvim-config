return {
  "nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = function(_, opts)
    local null_ls = require("null-ls")

    -- Add formatters you want
    opts.sources = vim.list_extend(opts.sources or {}, {
      null_ls.builtins.formatting.gofumpt,
      -- You can add gofmt or golines if you want alternatives
      -- null_ls.builtins.formatting.gofmt,
      null_ls.builtins.formatting.golines,
      null_ls.builtins.formatting.goimports_reviser.with({
        args = {
          "-project-name",
          "-set-alias",
          "-rm-unused",
        },
      }),
    })
  end,
}
