return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function ()
      -- (Ctrl + N) shortcut to open file system
      vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
      vim.keymap.set('n', '<C-g>', ':Neotree git_status right<CR>', {})
    end
}
