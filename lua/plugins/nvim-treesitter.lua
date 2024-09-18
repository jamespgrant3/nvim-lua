return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "yaml", "bash", "lua", "vim", "vimdoc", "javascript", "typescript", "html" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
