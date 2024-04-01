function InitColorScheme(color)
    color = color or "ayu-mirage"

	vim.cmd.colorscheme(color)
end

InitColorScheme()
