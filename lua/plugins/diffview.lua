return {
  'sindrets/diffview.nvim',
  lazy = false,
  opts = {
  },
  keys = {
    { "<leader>dh", "<cmd>:DiffviewFileHistory %<cr>", desc = "diff file history" },
    { "<leader>do", "<cmd>:DiffviewOpen<cr>",          desc = "diff open" },
    { "<leader>dc", "<cmd>:DiffviewClose<cr>",         desc = "diff close" },
  }
}
