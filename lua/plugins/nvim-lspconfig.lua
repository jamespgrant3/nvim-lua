return {
  'neovim/nvim-lspconfig',
  config = function()
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
    --vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<Leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<Leader>e', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<Leader>[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<Leader>]', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
  end
}
