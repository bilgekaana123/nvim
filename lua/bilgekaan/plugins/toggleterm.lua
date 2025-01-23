return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 15,
        open_mapping = [[<A-h>]], -- First terminal opens with Option + H
        direction = "horizontal", -- Horizontal terminal for the first terminal
        shade_filetypes = {},
        persist_size = true,
      })
    end,
  },
}
