return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

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
				vim.lsp.buf.format({ async = true })
			end, opts)
		end

		local servers = { "eslint", "lua_ls", "terraformls", "ts_ls" }

		for _, server in ipairs(servers) do
			vim.lsp.config(server, {
				on_attach = on_attach,
				capabilities = capabilities,
			})
		end

		-- hover styling
		local border = "rounded"
		local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
		vim.lsp.util.open_floating_preview = function(contents, syntax, opts, ...)
			opts = opts or {}
			opts.border = opts.border or border
			return orig_util_open_floating_preview(contents, syntax, opts, ...)
		end

		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border })
	end,
}
