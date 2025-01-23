return {
  'windwp/nvim-ts-autotag',
  requires = 'nvim-treesitter/nvim-treesitter',  -- Ensure Treesitter is also loaded
  config = function()
    require('nvim-ts-autotag').setup({
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = false,
      },
    })
  end
}

