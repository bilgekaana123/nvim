return {
  {
    "folke/tokyonight.nvim",
  },
  -- {
  --   "xiantang/darcula-dark.nvim",
  --   config = function()
  --     require("darcula").setup({
  --       override = function(c)
  --         return {
  --           dark = "#1E1F22",
  --         }
  --       end,
  --     })
  --   end,
  -- },
  --

  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        style = "darker",
      })
      require("onedark").load() -- Ensure the theme is applied
    end,
  },
  { "loctvl842/monokai-pro.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "projekt0n/github-nvim-theme", name = "github-theme" },
  { "craftzdog/solarized-osaka.nvim", name = "solarized-osaka", opts = {
    transparent = false,
  } },
  { "nuvic/flexoki-nvim", name = "flexoki", opts = {
    tranparent = false,
  } },
  { "marko-cerovac/material.nvim" },
}
