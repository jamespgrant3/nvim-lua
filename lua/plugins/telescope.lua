return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make"
    }
  },
  opts = {
    defaults = {
      layout_strategy = "vertical",
    },
  },
  keys = {
    { "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>" },
    { "<leader>fd", "<cmd>lua require('telescope.builtin').diagnostics()<cr>" },
    { "<leader>gr", "<cmd>lua require('telescope.builtin').lsp_references()<cr>" },
    { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>",    desc = "toggle telescope" },
    { "<leader>fc", "<cmd>lua require('telescope.builtin').git_files()<cr>",     desc = "search over changed files" },
    { "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>",       desc = "search over buffers" },
    { "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>",     desc = "search help" },
    { "<leader>fs", "<cmd>lua require('telescope.builtin').grep_string()<cr>",   desc = "search for word under the cursor" },
  }
}
