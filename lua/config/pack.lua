-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading plugins so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Run plugin build steps on install/update (replaces lazy.nvim's `build` field)
vim.api.nvim_create_autocmd("PackChanged", {
	callback = function(ev)
		local name, kind = ev.data.spec.name, ev.data.kind
		if kind ~= "install" and kind ~= "update" then
			return
		end
		if name == "nvim-treesitter" then
			if not ev.data.active then
				vim.cmd.packadd(name)
			end
			vim.cmd("TSUpdate")
		end
	end,
})

-- Order-sensitive modules load first; the loop below re-requires them as
-- cached no-ops. Everything else is order-independent and loads alphabetically.
-- (LSP config is NOT order-sensitive: vim.lsp.config("*") resolves lazily.)
require("plugins.catppuccin") -- colorscheme before lualine reads its theme
require("plugins.mini-icons") -- nvim-web-devicons shim before lualine draws

local plugins_dir = vim.fn.stdpath("config") .. "/lua/plugins"
for _, file in ipairs(vim.fn.readdir(plugins_dir)) do
	local name = file:match("^(.+)%.lua$")
	if name then
		require("plugins." .. name)
	end
end
