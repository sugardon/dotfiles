return {
  {
    'saghen/blink.cmp',
    version = "*",
    opts = {
      keymap = {
        -- https://cmp.saghen.dev/configuration/keymap.html
        ["<CR>"] = { "accept", "fallback" },
        ["<Tab>"] = {
            "select_next",
            "snippet_forward",
            "fallback",
        },
        ["<S-Tab>"] = {
            "select_prev",
            "snippet_backward",
            "fallback",
        },
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-e>"] = { "hide" },
        ["<C-u>"] = { "scroll_documentation_up", "fallback" },
        ["<C-d>"] = { "scroll_documentation_down", "fallback" },
      },
    },
    opts_extend = { "sources.default" }
  }
}
