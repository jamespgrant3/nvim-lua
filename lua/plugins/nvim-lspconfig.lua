return {
  "neovim/nvim-lspconfig",
  keys = {
    { "gd", "<cmd>lua vim.lsp.buf.definition()<cr>" },
    { "gr", "<cmd>lua vim.lsp.buf.references()<cr>" },
    { "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<cr>" },
    { "<leader>e", "<cmd>lua vim.lsp.buf.rename()<cr>" },
    { "<leader>[", "<cmd>lua vim.diagnostic.goto_prev()<cr>" },
    { "<leader>]", "<cmd>lua vim.diagnostic.goto_next()<cr>" },
    { "K", "<cmd>lua vim.lsp.buf.hover()<cr>" },
    { "<leader>ls", "<cmd>lua vim.lsp.buf.document_symbol()<cr>" },
    { "<leader>fo", "<cmd>lua vim.lsp.buf.format()<cr>" },
  }
}
