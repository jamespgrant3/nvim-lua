return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()

    local masonLspConfig = require("mason-lspconfig")

    masonLspConfig.setup {
      ensure_installed = { "eslint" },
      automatic_installation = true,
    }

    local lspConfig = require("lspconfig")

    masonLspConfig.setup_handlers {
      function(server_name) -- default handler (optional)
        lspConfig[server_name].setup {}
      end,
      ["eslint"] = function()
        lspConfig.eslint.setup {
          on_attach = function(client, bufnr)
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = bufnr,
              command = "EslintFixAll",
            })
          end,
        }
      end
    }
  end
}
