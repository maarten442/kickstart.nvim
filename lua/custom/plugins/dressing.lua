return {
  'stevearc/dressing.nvim',
  event = 'VeryLazy',
  opts = {
    input = {
      default_prompt = '> ',
      border = 'rounded',
      relative = 'editor',
      prefer_width = 50,
      win_options = {
        winblend = 0,
      },
    },
    select = {
      backend = { 'telescope', 'builtin' },
      telescope = require('telescope.themes').get_dropdown {
        layout_config = { width = 0.4, height = 0.35 },
      },
      builtin = {
        border = 'rounded',
        relative = 'editor',
        win_options = {
          winblend = 0,
        },
      },
    },
  },
}
