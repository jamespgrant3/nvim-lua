# this file is meant for all mason plugin configuration
vim.keymap.set("n", "<leader>fy",
  "<cmd>!yamlfix --config-file $HOME/repos/dotfiles/master/.config/yamlfix/config.toml %<cr>",
  { desc = "format yaml files using yamlfix", silent = true })
