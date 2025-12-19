return {

  'AckslD/swenv.nvim',
  config = function()
    vim.keymap.set('n', '<leader>en', require('swenv.api').pick_venv)
  end,
}
