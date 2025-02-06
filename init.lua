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
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
require('lazy').setup({
  require 'plugins.alpha',
  require 'plugins.ansible',
  require 'plugins.bufferline',
  require 'plugins.cmp',
  require 'plugins.colorscheme',
  require 'plugins.gitblame',
  require 'plugins.grapple',
  require 'plugins.lsp',
  require 'plugins.markview',
  require 'plugins.mini',
  require 'plugins.neotree',
  require 'plugins.oil',
  require 'plugins.outline',
  require 'plugins.sleuth',
  require 'plugins.snacks',
  require 'plugins.snow',
  require 'plugins.telescope',
  require 'plugins.todo',
  require 'plugins.treesitter',
  require 'plugins.trouble',
  require 'plugins.typr',
  require 'plugins.fzf',
  require 'plugins.undotree',
  require 'plugins.zen',
})

vim.cmd.colorscheme 'kanagawa' -- tokyonight-night gruvbox kanagawa nordic monokai-pro
vim.diagnostic.config({ virtual_text = false })
