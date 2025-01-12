-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })


-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })


vim.keymap.set('n', '<leader>tc', ':!tsc<CR><CR>', {desc = 'Compile typescript'})
vim.keymap.set(
  'n',
  '<leader>ee',
  'oif err != nil {<CR>return err<CR>}<Esc>'
)

vim.keymap.set('n', '<leader>y', '"+y', { desc = 'Yoink to system clipboard' })
vim.keymap.set('v', '<leader>y', '"+y', { desc = 'Yoink to system clipboard' })

vim.keymap.set('n', '<leader>p', '"+p', { desc = 'Paste from system clipboard' })
vim.keymap.set('v', '<leader>p', '"+p', { desc = 'Paste from system clipboard' })

vim.keymap.set('n', '<leader>sn', ':LetItSnow<CR>', {desc = 'Let it snow!'})

vim.keymap.set('n', '<leader>gb', ':BlameToggle virtual<CR>')

vim.keymap.set('n', '<leader>t', ':lua MiniFiles.open()<CR>')
