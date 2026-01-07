local colors
if vim.o.background == "dark" then
	colors = {
		-- gruvbox-material dark
		color1 = "#32302F", -- bg1 - statusline base
		color2 = "#EA6962", -- red - replace accent
		color3 = "#D4BE98", -- fg0 - primary foreground
		color4 = "#928374", -- grey1 - inactive/secondary fg
		color5 = "#3A3735", -- bg_statusline2 - normal/section bg
		color6 = "#D3869B", -- purple - visual accent
		color7 = "#A9B665", -- green - insert accent
		color8 = "#7DAEA3", -- aqua - could be used for command mode
	}
else
	colors = {
		-- gruvbox-material light (if you want to match the light variant)
		color1 = "#F2E5BC", -- light bg
		color2 = "#C14A4A", -- light red
		color3 = "#654735", -- light fg
		color4 = "#A89984", -- light grey
		color5 = "#E0D8C7", -- light bg_statusline
		color6 = "#945E80", -- light purple
		color7 = "#6C782E", -- light green
		color8 = "#4C7A5D", -- light aqua
	}
end

return {
	replace = {
		a = { fg = colors.color1, bg = colors.color2, gui = "bold" },
		b = { fg = colors.color3, bg = colors.color1 },
	},
	inactive = {
		a = { fg = colors.color4, bg = colors.color1, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color1 },
		c = { fg = colors.color4, bg = colors.color1 },
	},
	normal = {
		a = { fg = colors.color3, bg = colors.color5, gui = "bold" },
		b = { fg = colors.color3, bg = colors.color1 },
		c = { fg = colors.color3, bg = colors.color1 },
	},
	visual = {
		a = { fg = colors.color1, bg = colors.color6, gui = "bold" },
		b = { fg = colors.color3, bg = colors.color1 },
	},
	insert = {
		a = { fg = colors.color1, bg = colors.color7, gui = "bold" },
		b = { fg = colors.color3, bg = colors.color1 },
	},
}
