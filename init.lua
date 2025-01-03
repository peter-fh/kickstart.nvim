--[[

=====================================================================
=====================================================================
========                                    .-----.          ========
========         .----------------------.   | === |          ========
========         |.-""""""""""""""""""-.|   |-----|          ========
========         ||                    ||   | === |          ========
========         ||   KICKSTART.NVIM   ||   |-----|          ========
========         ||                    ||   | === |          ========
========         ||                    ||   |-----|          ========
========         ||:Tutor              ||   |:::::|          ========
========         |'-..................-'|   |____o|          ========
========         `"")----------------(""`   ___________      ========
========        /::::::::::|  |::::::::::\  \ no mouse \     ========
========       /:::========|  |==hjkl==:::\  \ required \    ========
========      '""""""""""""'  '""""""""""""'  '""""""""""'   ========
========                                                     ========
=====================================================================
=====================================================================

-- ]]

require('options')
require('keymaps')
require('autocommands')

-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
require('lazy').setup({
  require 'plugins.cmp',
  require 'plugins.colorscheme',
  require 'plugins.gitblame',
  require 'plugins.gitsigns',
  require 'plugins.grapple',
  require 'plugins.lsp',
  require 'plugins.markview',
  require 'plugins.mini',
  require 'plugins.neotree',
  require 'plugins.oil',
  require 'plugins.outline',
  require 'plugins.sleuth',
  require 'plugins.snow',
  require 'plugins.telescope',
  require 'plugins.todo',
  require 'plugins.treesitter',
})

vim.cmd.colorscheme 'tokyonight-night' -- tokyonight-night gruvbox
vim.diagnostic.config({ virtual_text = false })
