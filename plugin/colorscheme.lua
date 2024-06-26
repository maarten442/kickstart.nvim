-- vim.cmd.colorscheme("darcula-dark")
-- require('catppuccin').setup {
--   flavour = 'frappe', -- latte, frappe, macchiato, mocha
--   term_colors = true,
--   transparent_background = false,
--   integrations = {
--     nvimtree = true,
--     treesitter = true,
--   },
-- }
-- --
-- vim.cmd.colorscheme 'catppuccin'
-- Lua
-- require('onedarktwo').setup {
--   -- Main options --
--   style = 'darker', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--   transparent = false, -- Show/hide background
--   term_colors = true, -- Change terminal color as per the selected theme style
--   ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
--   cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
--
--   -- toggle theme style ---
--   toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
--   toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between
--
--   -- Change code style ---
--   -- Options are italic, bold, underline, none
--   -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
--   code_style = {
--     comments = 'italic',
--     keywords = 'none',
--     functions = 'none',
--     strings = 'none',
--     variables = 'none',
--   },
--
--   -- Lualine options --
--   lualine = {
--     transparent = false, -- lualine center bar transparency
--   },
--
--   -- Custom Highlights --
--   colors = {}, -- Override default colors
--   highlights = {}, -- Override highlight groups
--
--   -- Plugins Config --
--   diagnostics = {
--     darker = true, -- darker colors for diagnostic
--     undercurl = true, -- use undercurl instead of underline for diagnostics
--     background = true, -- use background color for virtual text
--   },
-- }
-- require('ondedark').load()
-- vim.cmd.colorscheme 'darcula-dark'
-- require('onedarkpro').setup {
--  options = {
--    transparency = false,
--  },
--}
--vim.cmd 'colorscheme onedark'
--
-- require('rose-pine').setup {
--   variant = 'auto', -- auto, main, moon, or dawn
--   dark_variant = 'main', -- main, moon, or dawn
--   dim_inactive_windows = false,
--   extend_background_behind_borders = true,
--
--   enable = {
--     terminal = true,
--     legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
--     migrations = true, -- Handle deprecated options automatically
--   },
--
--   styles = {
--     bold = true,
--     italic = true,
--     transparency = true,
--   },
-- }
--
-- vim.cmd 'colorscheme rose-pine'
--
-- Default options:
require('kanagawa').setup {
  compile = false, -- enable compiling the colorscheme
  undercurl = false, -- enable undercurls
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = true },
  statementStyle = { bold = true },
  typeStyle = {},
  transparent = false, -- do not set background color
  dimInactive = false, -- dim inactive window `:h hl-NormalNC`
  terminalColors = true, -- define vim.g.terminal_color_{0,17}
  colors = { -- add/modify theme and palette colors
    palette = { carpYellow = '#dfdcc6', peachRed = '#FF4D62' }, -- , syn = { keyword = '#FF5D62' } add this to the theme color
    theme = { wave = {}, lotus = {}, dragon = {}, all = { ui = { bg_gutter = 'none' } } },
  },
  -- function(colors)
  --   local theme = colors.theme
  --   -- local theme_colors = colors.theme
  --   -- Get the colors for the current theme
  --   return {
  --     Keyword = { fg = colors.theme.syn.special3 }, -- Replace luaFunction with the correct group
  --     -- let us test this above
  --   }
  -- end,
  theme = 'wave', -- Load "wave" theme when 'background' option is not set
  background = { -- map the value of 'background' option to a theme
    dark = 'wave', -- try "dragon" !
    light = 'lotus',
  },
}

-- setup must be called before loading
vim.cmd 'colorscheme kanagawa'
