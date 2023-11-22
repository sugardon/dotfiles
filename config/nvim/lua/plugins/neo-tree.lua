return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		-- branch = "v3.x",
		cmd = "Neotree",
		keys = {
			{
				"<leader>tt",
				"<cmd>Neotree toggle<cr>",
				desc = "Explorer NeoTree (root dir)",
			},
		},
		opts = {
			filesystem = {
				filtered_items = {
					visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
					hide_dotfiles = false,
					hide_gitignored = true,
				},
			},
		},
	},
}
