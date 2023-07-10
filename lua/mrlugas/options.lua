local options = {
	mouse = "a",
	termguicolors = true,
	smartcase = true,
	smartindent = true,
	swapfile = false,
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	expandtab = true,
	cursorline = true,
	number = true,
	breakindent = true,
	relativenumber = true,
	number = true,

}

for k, v in pairs(options) do
	vim.opt[k] = v
end
