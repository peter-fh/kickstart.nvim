return {
  {
    'will-lynas/grapple-line.nvim',
    version = '1.x',
    dependencies = {
      'cbochs/grapple.nvim',
    },
  },
  {
    'cbochs/grapple.nvim',
    config = function()
      vim.keymap.set('n', '<leader>m', require('grapple').toggle)
      vim.keymap.set('n', '<leader>M', require('grapple').toggle_tags)
      vim.keymap.set('n', '<leader>h', '<cmd>Grapple select index=1<cr>')
      vim.keymap.set('n', '<leader>j', '<cmd>Grapple select index=2<cr>')
      vim.keymap.set('n', '<leader>k', '<cmd>Grapple select index=3<cr>')
      vim.keymap.set('n', '<leader>l', '<cmd>Grapple select index=4<cr>')
      vim.keymap.set('n', '<leader>;', '<cmd>Grapple select index=5<cr>')
    end,
  },
}
