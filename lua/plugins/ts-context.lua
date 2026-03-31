return {
  "nvim-treesitter/nvim-treesitter-context",
  opts = {
    enable = true,
    max_lines = 4,       -- max lines to show at top
    min_window_height = 20,
    patterns = {
      default = { "class", "function", "method", "for" },
      typescript = { "class_declaration", "method_definition",
                     "decorator" },  -- shows @Injectable, @Controller etc
    },
  },
}
