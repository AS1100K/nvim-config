return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
			enable_git_status = true,
			default_component_config = {
				git_status = {
					symbols = {
						-- Change type
						added = "✚",
						modified = "",
						deleted = "✖",
						renamed = "󰁕",
						-- Status type
						untracked = "",
						ignored = "",
						unstaged = "󰄱",
						staged = "",
						conflict = "",
					},
				},
			},
		})

		-- (Ctrl + n) shortcut to open file system
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
		-- (Ctrl + g) shortcut to open git_status
		vim.keymap.set("n", "<C-g>", ":Neotree git_status right<CR>", {})
	end,
}
