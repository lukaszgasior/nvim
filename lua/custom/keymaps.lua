-- function toggle_contextual(vmode)
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ neo-tree ]]]
vim.keymap.set('n', '<C-b>', ':Neotree toggle<cr>')
vim.keymap.set('n', '<leader>o', function()
	if vim.bo.filetype == "neo-tree" then
		vim.cmd.wincmd "p"
	else
		vim.cmd.Neotree "focus"
	end
end)

-- [[ Window management]]
-- Select all
keymap('n', '<C-a>', 'gg<S-v>G', opts)
-- New tab
keymap('n', 'te', ':tabedit<cr>', opts)
-- Split window
keymap('n', 'ss', ':split<Return><C-w>w', opts)
keymap('n', 'sv', ':vsplit<Return><C-w>w', opts)
-- Move window
-- keymap('n', '<Space><Space>', '<C-w>w', opts)
keymap('', 'sh', '<C-w>h', opts)
keymap('', 'sk', '<C-w>k', opts)
keymap('', 'sj', '<C-w>j', opts)
keymap('', 'sl', '<C-w>l', opts)
-- Resize window
keymap('n', '<C-w><left>', '<C-w><', opts)
keymap('n', '<C-w><right>', '<C-w>>', opts)
keymap('n', '<C-w><up>', '<C-w>+', opts)
keymap('n', '<C-w><down>', '<C-w>-', opts)

vim.keymap.set("n", "<C-_>",
	function() require('Comment.api').toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1) end,
	{ noremap = true, silent = true })
vim.keymap.set("v", "<C-_>",
	"<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
	{ noremap = true, silent = true })
