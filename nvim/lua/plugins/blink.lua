-- Blink.cmp completion customization
-- Base config: LazyVim/lua/lazyvim/plugins/extras/coding/blink.lua
-- Docs: https://cmp.saghen.dev/

return {
  {
    "saghen/blink.cmp",
    opts_extend = {
      "sources.completion.enabled_providers",
      "sources.compat",
      "sources.default",
    },
    opts = {
      -- Enable signature help (disabled by default in LazyVim)
      signature = {
        enabled = true,
      },

      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 100,
        },
        ghost_text = {
          enabled = true,
        },
      },

      sources = {
        compat = {},
        default = { "lsp", "path", "snippets", "buffer" },
      },

      keymap = {
        preset = "enter",
        ["<C-y>"] = { "select_and_accept" },
        ["<C-d>"] = { "scroll_documentation_down", "fallback" },
        ["<C-u>"] = { "scroll_documentation_up", "fallback" },
      },
    },
  },
}
