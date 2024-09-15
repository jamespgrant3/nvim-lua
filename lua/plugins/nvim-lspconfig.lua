return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>e", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>[", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>]", "<cmd>lua vim.diagnostic.goto_next()<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>ls", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>fo", "<cmd>lua vim.lsp.buf.format()<CR>", { noremap = true, silent = true })
  end
}
