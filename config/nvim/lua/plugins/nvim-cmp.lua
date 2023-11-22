-- https://github.com/hrsh7th/nvim-cmp
-- Plugin default
-- https://github.com/LazyVim/LazyVim/blob/68ff818a5bb7549f90b05e412b76fe448f605ffb/lua/lazyvim/plugins/coding.lua#L57
return {
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		opts = function(_, opts)
			local cmp = require("cmp")
			opts.mapping = cmp.mapping.preset.insert({
				["<TAB>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			})
		end,
	},
}
