return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
  opts = {
    cmdline = {
      view = 'cmdline_popup',
      format = {
        cmdline = { icon = '>' },
        search_down = { icon = ' ⌄' },
        search_up = { icon = ' ⌃' },
        filter = { icon = '$' },
        lua = { icon = '☾' },
        help = { icon = '?' },
      },
    },
    messages = {
      view_search = false,
    },
    lsp = {
      override = {
        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
        ['vim.lsp.util.stylize_markdown'] = true,
        ['cmp.entry.get_documentation'] = true,
      },
      hover = { enabled = true },
      signature = { enabled = true },
    },
    presets = {
      bottom_search = false,
      command_palette = true,
      long_message_to_split = true,
      lsp_doc_border = true,
    },
    views = {
      cmdline_popup = {
        border = { style = 'rounded', padding = { 0, 1 } },
        position = { row = '40%', col = '50%' },
        size = { width = 60, height = 'auto' },
      },
      popupmenu = {
        relative = 'editor',
        border = { style = 'rounded', padding = { 0, 1 } },
        position = { row = '50%', col = '50%' },
        size = { width = 60, height = 10 },
      },
    },
    routes = {
      -- Skip "written" messages
      { filter = { event = 'msg_show', kind = '', find = 'written' }, opts = { skip = true } },
      -- Skip search count messages
      { filter = { event = 'msg_show', kind = 'search_count' }, opts = { skip = true } },
    },
  },
}
