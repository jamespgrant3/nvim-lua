vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })

-- Neovim already maps grr/gra/grn/gri/gO and K when a server attaches
-- (:help lsp-defaults), so only the extras are set here. Note that mapping
-- `gr` itself would shadow the built-in `gr*` prefix behind `timeoutlen`.
local on_attach = function(_, bufnr)
	local opts = { buffer = bufnr }
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, opts)
	vim.keymap.set("n", "<leader>e", vim.lsp.buf.rename, opts)
	vim.keymap.set("n", "<leader>[", function()
		vim.diagnostic.jump({ count = -1, float = true })
	end, opts)
	vim.keymap.set("n", "<leader>]", function()
		vim.diagnostic.jump({ count = 1, float = true })
	end, opts)
	vim.keymap.set("n", "<leader>ls", vim.lsp.buf.document_symbol, opts)
	-- Same formatters as format-on-save (conform), so manual and on-save
	-- formatting can never disagree.
	vim.keymap.set("n", "<leader>fo", function()
		require("conform").format({ async = true, lsp_format = "fallback" })
	end, opts)
end

local servers = { "eslint", "lua_ls", "terraformls", "ts_ls" }

for _, server in ipairs(servers) do
	vim.lsp.config(server, {
		on_attach = on_attach,
	})
end

vim.lsp.enable(servers)
