vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

local ts = require("nvim-treesitter")

-- No-op for parsers that are already installed. Runs asynchronously.
ts.install({
	"bash",
	"helm",
	"html",
	"http",
	"javascript",
	"json",
	"lua",
	"markdown",
	"markdown_inline",
	"python",
	"sql",
	"terraform",
	"typescript",
	"vim",
	"vimdoc",
	"yaml",
})

-- On the `main` branch nothing is enabled by setup(); highlighting and indenting
-- are opt-in per buffer. See `:h treesitter-highlight`.
vim.api.nvim_create_autocmd("FileType", {
	callback = function(ev)
		local lang = vim.treesitter.language.get_lang(ev.match)
		if not lang then
			return
		end

		-- Parsers install asynchronously, so a buffer opened before its parser
		-- lands should fail quietly rather than throwing on every FileType.
		if not pcall(vim.treesitter.start, ev.buf, lang) then
			return
		end

		if vim.treesitter.query.get(lang, "indents") then
			vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		end
	end,
})
