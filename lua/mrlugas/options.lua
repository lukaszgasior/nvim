local options = {
	mouse = "a",
	termguicolors = true,
	smartcase = true,
	smartindent = true,
	swapfile = false,
	tabstop = 2,
	cursorline = true,
	number = true,
	breakindent = true,
	relativenumber = true,
	number = true,

}

vim.g.mapleader = " "
vim.g.maplocalleader = " "
--vim.g.loaded_netrw = 1 -- to be checked
--vim.g.locaded_netrwPlugin = 1 -- to be checked

for k, v in pairs(options) do
	vim.opt[k] = v
end
