return {
  "kevinhwang91/nvim-ufo",
  dependencies = {
    "kevinhwang91/promise-async",
    {
      "luukvbaal/statuscol.nvim",
      config = function()
        local builtin = require("statuscol.builtin")
        require("statuscol").setup({
          relculright = true,
          segments = {
            { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
            { text = { "%s" }, click = "v:lua.ScSa" },
            { text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
          },
        })
      end,
    },
  },
  event = "BufReadPost",
  opts = {
    provider_selector = function()
      return { "treesitter", "indent" }
    end,
  },

  -- -- Add these lines to customize the fold colors
  -- config = function()
  --   -- Set custom fold background and foreground colors
  --   vim.cmd [[
  --     hi default UfoFoldedFg guifg=#FFFFFF    " Set the folded line text color (foreground)
  --     hi default UfoFoldedBg guibg=#333333    " Set the folded line background color
  --   ]]
  --
  --   -- Additional customizations can be done here if needed
  -- end,
}
