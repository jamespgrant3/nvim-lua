return {
  'sindrets/diffview.nvim',
  lazy = false,
  opts = {
  },
  keys = {
    { "<leader>dvh", "<cmd>:DiffviewFileHistory %<cr>", desc = "diff file history" },
    { "<leader>dvo", "<cmd>:DiffviewOpen<cr>",        desc = "diff open" },
    { "<leader>dvc", "<cmd>:DiffviewClose<cr>",       desc = "diff close" },
  }
}
