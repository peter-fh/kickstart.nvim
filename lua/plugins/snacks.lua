return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    scroll = {
      animate = {
        duration = { step = 15, total = 250 },
        easing = "linear",
      },
      spamming = 0, -- threshold for spamming detection
      -- what buffers to animate
      filter = function(buf)
        return vim.g.snacks_scroll ~= false and vim.b[buf].snacks_scroll ~= false and vim.bo[buf].buftype ~= "terminal"
      end,
    }
  },
  config = function()
    Snacks.scroll.enable()
  end,
}
