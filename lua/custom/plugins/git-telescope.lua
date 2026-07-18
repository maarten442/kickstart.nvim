return {
  'nvim-telescope/telescope.nvim',
  keys = {
    { '<leader>gs', '<cmd>Telescope git_status<cr>', desc = '[G]it [S]tatus' },
    { '<leader>gb', '<cmd>Telescope git_branches<cr>', desc = '[G]it [B]ranches' },
    { '<leader>gl', '<cmd>Telescope git_commits<cr>', desc = '[G]it [L]og (commits)' },
  },
}
