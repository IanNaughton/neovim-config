function SetColors(color)
	color = color or "kanagawa"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_se
end

SetColors()
