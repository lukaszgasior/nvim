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
  encoding = 'utf-8',
  fileencoding = 'utf-8',
  title = true,
  autoindent = true,
  hlsearch = true,
  incsearch = true,
  backup = false,
  showcmd = true,
  cmdheight = 1,
  laststatus = 2,
  expandtab = true,
  scrolloff = 10,
  shell = 'pwsh',
  inccommand = 'split',
  ignorecase = true,
  smarttab = true,
  breakindent = true,
  wrap = false,
  backspace = { 'start', 'eol', 'indent' }
}

vim.scriptencoding = 'utf-8'

for k, v in pairs(options) do
	vim.opt[k] = v
end
