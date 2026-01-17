local colors = require("../config/colors")

local function get_ip_addresses()
	-- Get private IP
	local handle = io.popen("ifconfig | grep 'inet ' | grep -v '127.0.0.1' | grep -v 'utun' | awk '{print $2}' | head -1")
	local private_ip = handle:read("*a")
	handle:close()
	private_ip = private_ip:gsub("%s+", "")

	-- Get public IP
	handle = io.popen("curl -s --max-time 2 ifconfig.me 2>/dev/null")
	local public_ip = handle:read("*a")
	handle:close()
	public_ip = public_ip:gsub("%s+", "")

	-- Format output
	if private_ip ~= "" and public_ip ~= "" then
		return " " .. private_ip .. "/" .. public_ip
	elseif private_ip ~= "" then
		return " " .. private_ip
	elseif public_ip ~= "" then
		return " " .. public_ip
	else
		return ""
	end
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		options = {
			icons_enabled = true,
			theme = "catppuccin-mocha",
			--component_separators = { left = "", right = ""},
			component_separators = { left = "", right = "" },
			--section_separators = { left = "", right = ""},
			section_separators = { left = "", right = "" },
			disabled_filetypes = {
				statusline = {},
				winbar = {},
			},
			ignore_focus = {},
			always_divide_middle = true,
			globalstatus = false,
			refresh = {
				statusline = 1000,
				tabline = 1000,
				winbar = 1000,
			},
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = {
				{
					"filename",
					path = 1,
				},
				{
					function()
						return "🤖" .. vim.fn["codeium#GetStatusString"]()
					end,
					color = { fg = colors.green },
				},
			},
			lualine_x = {
				{
					get_ip_addresses,
					color = { fg = colors.blue },
				},
				"fileformat",
				"filetype",
			},
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		inactive_sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = {
				{
					"filename",
					path = 1,
				},
				{
					function()
						return "🤖" .. vim.fn["codeium#GetStatusString"]()
					end,
					color = { fg = colors.green },
				},
			},
			lualine_x = {
				{
					get_ip_addresses,
					color = { fg = colors.blue },
				},
				"fileformat",
				"filetype",
			},
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		tabline = {},
		winbar = {},
		inactive_winbar = {},
		extensions = {},
	},
}
