return {
  "olexsmir/gopher.nvim",
  ft = "go",
  config = function(_, opts)
    require("gopher").setup(opts)
    vim.keymap.set("n", "<leader>gsj", "<cmd>GoTagAdd json<CR>", { desc = "Add JSON Tags", silent = true })
    vim.keymap.set("n", "<leader>gsjr", "<cmd>GoTagRm json<CR>", { desc = "Remove JSON Tags", silent = true })
    vim.keymap.set("n", "<leader>gir", "<cmd>GoIfErr<CR>", { desc = "Err Handling", silent = true })
  end,
  build = function()
    vim.cmd([[silent! GoInstallDeps]])
  end,
}
