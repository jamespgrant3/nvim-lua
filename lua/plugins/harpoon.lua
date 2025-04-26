return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	keys = {
		{
			"<leader>hl",
			"<cmd>lua require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())<cr>",
			desc = "harpoon list",
		},
		{ "<leader>ha", "<cmd>lua require('harpoon'):list():add()<cr>", desc = "harpoon append" },
		{ "<leader>h1", "<cmd>lua require('harpoon'):list():select(1)<cr>", desc = "harpoon item 1" },
		{ "<leader>h2", "<cmd>lua require('harpoon'):list():select(2)<cr>", desc = "harpoon item 2" },
		{ "<leader>h3", "<cmd>lua require('harpoon'):list():select(3)<cr>", desc = "harpoon item 3" },
		{ "<leader>h4", "<cmd>lua require('harpoon'):list():select(4)<cr>", desc = "harpoon item 4" },
		{ "<leader>h5", "<cmd>lua require('harpoon'):list():select(5)<cr>", desc = "harpoon item 5" },
	},
	config = function()
		require("harpoon"):setup()
	end,
}
