return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "yaml", "bash", "lua", "vim", "vimdoc", "javascript", "typescript", "html" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
  }
}
