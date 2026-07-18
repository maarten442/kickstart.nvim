return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  keys = {
    { '<leader>ae', ':CodeCompanion /explain<CR>', mode = 'v', desc = '[A]I [E]xplain selection' },
    { '<leader>aa', ':CodeCompanionActions<CR>', mode = 'v', desc = '[A]I [A]ctions' },
    { '<leader>ac', ':CodeCompanionChat<CR>', mode = { 'n', 'v' }, desc = '[A]I [C]hat' },
  },
  opts = {
    adapters = {
      anthropic = function()
        return require('codecompanion.adapters').extend('anthropic', {
          schema = {
            model = { default = 'claude-haiku-4-5-20251001' },
          },
        })
      end,
    },
    strategies = {
      chat = { adapter = 'anthropic' },
      inline = { adapter = 'anthropic' },
    },
    display = {
      chat = {
        type = 'float',
        float_options = {
          border = 'rounded',
        },
      },
    },
  },
}
