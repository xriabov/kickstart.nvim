vim.keymap.set('n', '<leader>ex', ':Oil<CR>', { noremap = true, silent = true })
return {
  'stevearc/oil.nvim',
 ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
	default_file_explorer = true,
  },
  -- Optional dependencies
  --dependencies = { { "echasnovski/mini.icons", opts = {} } },
  dependencies = { "nvim-tree/nvim-web-devicons", "echasnovski/mini.icons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}

