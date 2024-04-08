return {
  {
    "nvimtools/none-ls.nvim",
    event = "LazyFile",
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = function(_, opts)
          opts.ensure_installed = opts.ensure_installed or {}
          vim.list_extend(opts.ensure_installed, { "codespell" })
        end,
      },
    },
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources or {}, {
        nls.builtins.diagnostics.codespell,
      })
      nls.setup({
        -- For `warning: multiple different client offset_encodings detected for buffer, this is not supported yet`
        -- https://github.com/jose-elias-alvarez/null-ls.nvim/issues/428
        on_init = function(new_client, _)
          new_client.offset_encoding = "utf-32"
        end,
      })
    end,
  },
}
