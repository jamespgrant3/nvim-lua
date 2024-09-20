return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      --lua = { "stylua" },
      graphql = { "prettier" },
      html = { "prettier" },
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      json = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      ["_"] = { "trim_whitespace" }
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters = {
      prettier = {
        condition = function()
          return vim.loop.fs_realpath(".prettierrc.js") ~= nil or vim.loop.fs_realpath(".prettierrc") ~= nil
        end,
      },
      --stylua = {
      --  condition = function(self, ctx)
      --    print(ctx.filename)
      --  end,
      --}
    },
  }
}
