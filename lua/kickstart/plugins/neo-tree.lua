-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

-- Replace the content of lua/kickstart/plugins/neo-tree.lua with:

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>n', ':Neotree reveal<CR>', desc = 'NeoTree Explorer', silent = true },
  },
  opts = {
    filesystem = {
      follow_current_file = true, -- Follow current file when opening/changing buffers
      hijack_netrw_behavior = 'open_default', -- netrw disabled, opening a directory opens neo-tree
      use_libuv_file_watcher = true, -- This will use the OS level file watchers to detect changes
      filtered_items = {
        visible = true, -- This makes hidden files visible by default
        show_hidden_count = true,
        hide_dotfiles = false, -- Set to false to show dotfiles
        hide_gitignored = false, -- Set to false to show gitignored files
        hide_by_name = {
          -- '.git',              -- Uncomment if you want to hide the .git folder
          -- 'node_modules',      -- Uncomment if you want to hide node_modules
        },
        never_show = {
          -- '.DS_Store',         -- Uncomment if you never want to see .DS_Store
        },
      },
      window = {
        mappings = {
          ['<leader>n'] = 'close_window', -- Close the tree when pressing <leader>n again
          ['H'] = 'toggle_hidden', -- Add a mapping to easily toggle hidden files
        },
      },
    },
    window = {
      position = 'left',
      width = 30,
    },
  },
}
