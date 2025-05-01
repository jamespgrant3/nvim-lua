return {
	"Exafunction/windsurf.vim",
	event = "BufEnter",
	config = function()
		vim.g.codeium_disable_bindings = 1

		vim.keymap.set("i", "<c-h>", function()
			vim.fn["codeium#Complete"]()
		end, { desc = "codeium manual trigger suggestions", silent = true })

		vim.keymap.set("i", "<c-y>", function()
			-- prevent conflict with nvim-cmp
			local cmp = require("cmp")
			if cmp and cmp.visible() then
				cmp.confirm({ select = true })
			else
				return vim.fn["codeium#Accept"]()
			end
		end, { desc = "codeium accept suggestion", expr = true, silent = true })

		vim.keymap.set("i", "<c-e>", function()
			vim.fn["codeium#Clear"]()
		end, { desc = "codeium clear suggestion", silent = true })

		vim.keymap.set("i", "<c-j>", function()
			vim.fn["codeium#CycleCompletions"](-1)
		end, { desc = "codeium previous suggestioin", silent = true })

		vim.keymap.set("i", "<c-k>", function()
			vim.fn["codeium#CycleCompletions"](1)
		end, { desc = "codeium next suggestion", silent = true })

		vim.keymap.set("i", "<c-\\>", function()
			vim.fn["codeium#Clear"]()
		end, { desc = "codeium clear suggestion", silent = true })
	end,
	keys = {
		{ "<leader>cc", "<cmd>CodeiumChat<cr>", desc = "windsurf chat" },
		{ "<leader>ct", "<cmd>CodeiumToggle<cr>", desc = "windsurf toggle" },
	},
}
