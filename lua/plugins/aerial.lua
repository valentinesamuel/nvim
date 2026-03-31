return {
  "stevearc/aerial.nvim",
  keys = {
    { "<leader>cs", "<cmd>AerialToggle</cr>", desc = "Aerial (Symbols)" },
    { "{", "<cmd>AerialPrev</cr>",   desc = "Prev Symbol" },
    { "}", "<cmd>AerialNext</cr>",   desc = "Next Symbol" },
  },
  opts = { layout = { default_direction = "right" } },
}
