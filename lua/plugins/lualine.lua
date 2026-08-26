local colors = require("config.colors")

-- Cached IP addresses. The statusline component never blocks: it returns
-- whatever is cached and refreshes the public IP in the background.
local ip_cache = {
	value = "",
	last_update = 0,
	update_interval = 300, -- 5 minutes in seconds
	updating = false,
}

-- Private IP comes straight from libuv, so no subprocess is needed.
local function private_ip()
	for _, addrs in pairs(vim.uv.interface_addresses()) do
		for _, a in ipairs(addrs) do
			if a.family == "inet" and not a.internal then
				return a.ip
			end
		end
	end
	return ""
end

local function format_ips(private, public)
	if private ~= "" and public ~= "" then
		return " " .. private .. "/" .. public
	elseif private ~= "" then
		return " " .. private
	elseif public ~= "" then
		return " " .. public
	end
	return ""
end

local function refresh_ips()
	ip_cache.updating = true
	vim.system({ "curl", "-s", "--max-time", "2", "ifconfig.me" }, { text = true }, function(res)
		local public = res.code == 0 and vim.trim(res.stdout or "") or ""
		vim.schedule(function()
			ip_cache.value = format_ips(private_ip(), public)
			ip_cache.last_update = os.time()
			ip_cache.updating = false
			vim.cmd("redrawstatus")
		end)
	end)
end

local function get_ip_addresses()
	if not ip_cache.updating and os.time() - ip_cache.last_update >= ip_cache.update_interval then
		refresh_ips()
	end
	return ip_cache.value
end

vim.pack.add({
	"https://github.com/nvim-lualine/lualine.nvim",
})

-- Active and inactive windows use identical sections. This returns a fresh
-- table each call because lualine mutates the spec it is handed during setup.
local function build_sections()
	return {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = {
			{
				"filename",
				path = 1,
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
	}
end

-- Only non-default options are listed here. See `:help lualine-Default-configuration`.
require("lualine").setup({
	options = {
		theme = "catppuccin-mocha",
		-- no powerline separators
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
	},
	sections = build_sections(),
	inactive_sections = build_sections(),
})
