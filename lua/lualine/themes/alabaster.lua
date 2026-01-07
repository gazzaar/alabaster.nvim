local colors
if vim.o.background == "dark" then
    colors = {
        -- gruvbox-material aligned
        color1 = "#32302F", -- statusline base
        color2 = "#EA6962", -- replace accent (red)
        color3 = "#D4BE98", -- primary foreground
        color4 = "#928374", -- inactive/secondary fg
        color5 = "#3A3735", -- normal/section bg
        color6 = "#D3869B", -- visual accent (purple)
    }
else
    colors = {
        color1 = "#c9c9c9",
        color2 = "#cb9000",
        color3 = "#222222",
        color4 = "#666666",
        color5 = "#aaaaaa",
        color6 = "#7a3e9d",
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
        a = { fg = colors.color1, bg = colors.color3, gui = "bold" },
        b = { fg = colors.color3, bg = colors.color1 },
    },
}
