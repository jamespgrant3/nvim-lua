vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup{
  disable_netrw = false,
  view = {
    float = {
      enable = true,
      open_win_config = {
        width = 150,
        height = 60
      }
    }
  }
}
