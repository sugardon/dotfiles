return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        -- mdx
        -- https://github.com/nvim-treesitter/nvim-treesitter/discussions/3908
        vim.filetype.add({
          extension = { mdx = "mdx" },
        })
        vim.list_extend(opts.ensure_installed, { "markdown" })
        vim.treesitter.language.register("markdown", "mdx")
      end
    end,
  },
}
