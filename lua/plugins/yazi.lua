return {
  'mikavilpas/yazi.nvim',
  event = 'VeryLazy',
  keys = {
    {
      "<leader>ti",
      mode = { "n", "v" },
      "<cmd>Yazi<cr>",
      desc = "Open yazi at the current file",
    },
    {
      -- Open in the current working directory
      "<leader>cw",
      "<cmd>Yazi cwd<cr>",
      desc = "Open the file manager in nvim's working directory",
    },
    {
      '<leader>tt',
      "<cmd>Yazi toggle<cr>",
      desc = "Resume the last yazi session",
    },
  },
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = true,
    keymaps = {
      show_help = 'g?',
    },
  },
}
