require('user.options')
require('user.keymaps')
require('user.lazy')

vim.cmd("colorscheme onedark")

vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }

