return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      update_focused_file = {
        enable = true,
      },
      view = {
        width = 30,
        relativenumber = true,
        preserve_window_proportions = true,
        --side = "right",
      },
      -- change folder arrow icons
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              default = "",
              open = "",
              empty = "",
              empty_open = "",
            },
            git = {
              unstaged = "",
              staged = "",
              unmerged = "",
              renamed = "",
              untracked = "",
              deleted = "",
              ignored = "󰴲",
            },
          },
        },
      },
      filters = {
        -- custom = { ".DS_Store" },
        dotfiles = false,
      },
      -- git = {
      --   ignore = false,
      -- },
    })

    -- set keymaps

    local keymap = vim.keymap

    -- Toggle NvimTree (File Explorer) with Ctrl+n
    keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
    -- Collapse all folders in NvimTree with Ctrl+C
    keymap.set("n", "<C-c>", ":NvimTreeCollapse<CR>", { noremap = true, silent = true })
    -- Toggle NvimTree for the current file with Ctrl+Shift+n
    keymap.set("n", "<leader>nf", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
  end,
}
