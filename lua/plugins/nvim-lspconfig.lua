-- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
--   vim.lsp.handlers.hover, {
--     border = "rounded",
--     max_width = 80,
--     max_height = 20,
--   }
-- )

return {
  "neovim/nvim-lspconfig",
  config = function()
    local servers = { "lua_ls", "ts_ls", "eslint", "terraformls" }

    local on_attach = function(_, bufnr)
      local opts = { buffer = bufnr }

      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, opts)
      vim.keymap.set("n", "<leader>e", vim.lsp.buf.rename, opts)
      vim.keymap.set("n", "<leader>[", vim.diagnostic.goto_prev, opts)
      vim.keymap.set("n", "<leader>]", vim.diagnostic.goto_next, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "<leader>ls", vim.lsp.buf.document_symbol, opts)
      vim.keymap.set("n", "<leader>fo", function()
        vim.lsp.buf.format { async = true }
      end, opts)
    end

    -- Example setting up a language server
    local lspconfig = require("lspconfig")

    for _, server in ipairs(servers) do
      local opts = {
        on_attach = on_attach,
      }

      if server == "lua_ls" then
        opts.settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }, -- stop warning about "vim" being undefined
            },
          },
        }
      elseif server == "eslint" then
        opts.on_attach = function(client, bufnr)
          client.server_capabilities.documentFormattingProvider = false
          on_attach(client, bufnr)
        end
      end

      lspconfig[server].setup(opts)
    end

    local border = "rounded"

    -- patch the floating preview function
    local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
    vim.lsp.util.open_floating_preview = function(contents, syntax, opts, ...)
      opts = opts or {}
      opts.border = opts.border or border
      return orig_util_open_floating_preview(contents, syntax, opts, ...)
    end

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover,
      { border = border }
    )
  end,
}
