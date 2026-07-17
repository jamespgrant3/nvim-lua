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
		elseif name == "telescope-fzf-native.nvim" then
			vim.system({ "make" }, { cwd = ev.data.path })
		end
	end,
})

local plugins_dir = vim.fn.stdpath("config") .. "/lua/plugins"
for _, file in ipairs(vim.fn.readdir(plugins_dir)) do
	local name = file:match("^(.+)%.lua$")
	if name then
		require("plugins." .. name)
	end
end
