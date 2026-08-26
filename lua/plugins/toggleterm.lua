vim.pack.add({
	"https://github.com/akinsho/toggleterm.nvim",
})

require("toggleterm").setup({
	direction = "float",
	float_opts = {
		border = "curved",
	},
})

local Terminal = require("toggleterm.terminal").Terminal
local float_term

local function toggle_float_term()
	local cwd = vim.fn.getcwd(0)
	if float_term and float_term.dir ~= cwd then
		float_term:shutdown()
		float_term = nil
	end
	if not float_term then
		float_term = Terminal:new({ direction = "float", dir = cwd, hidden = true })
	end
	float_term:toggle()
end

vim.keymap.set(
	{ "n", "t" },
	"<leader>tt",
	toggle_float_term,
	{ noremap = true, silent = true, desc = "Toggle floating terminal (window cwd)" }
)
