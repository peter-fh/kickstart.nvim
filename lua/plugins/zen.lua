return {
  "folke/zen-mode.nvim",
  config = function()

    vim.keymap.set(
      'n',
      '<leader>zn',
      function()
        require("zen-mode").toggle({
          window = {
            width = .70 -- width will be 85% of the editor width
          }
        })
      end,
      {desc = 'Toggle zen mode'}
    )
  end,
}
