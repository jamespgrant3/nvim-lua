local colors = require("../config/colors")

-- Cached IP addresses with timer to prevent slowdown
local ip_cache = {
	value = "",
	last_update = 0,
	update_interval = 300, -- 5 minutes in seconds
}

local function get_ip_addresses()
	local current_time = os.time()

	-- Return cached value if still fresh
	if current_time - ip_cache.last_update < ip_cache.update_interval then
		return ip_cache.value
	end

	-- Update cache
	local private_ip = ""
	local handle = io.popen("ifconfig | grep 'inet ' | grep -v '127.0.0.1' | grep -v 'utun' | awk '{print $2}' | head -1")
	if handle then
		private_ip = handle:read("*a")
		handle:close()
		private_ip = private_ip:gsub("%s+", "")
	end

	-- Get public IP (cached, only updates every 5 minutes)
	local public_ip = ""
	handle = io.popen("curl -s --max-time 2 ifconfig.me 2>/dev/null")
	if handle then
		public_ip = handle:read("*a")
		handle:close()
		public_ip = public_ip:gsub("%s+", "")
	end

	-- Format output
	if private_ip ~= "" and public_ip ~= "" then
		ip_cache.value = " " .. private_ip .. "/" .. public_ip
	elseif private_ip ~= "" then
		ip_cache.value = " " .. private_ip
	elseif public_ip ~= "" then
		ip_cache.value = " " .. public_ip
	else
		ip_cache.value = ""
	end

	ip_cache.last_update = current_time
	return ip_cache.value
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
