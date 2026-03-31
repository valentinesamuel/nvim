return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  ft = { "typescript", "typescriptreact", "javascript" },
  opts = {
    settings = {
      expose_as_code_action = "all",
      tsserver_plugins = {},
      tsserver_max_memory = "auto",
      complete_function_calls = true,
      include_completions_with_insert_text = true,
      -- Prisma and Swagger decorator support:
      tsserver_file_preferences = {
        includeInlayParameterNameHints = "all",
        includeInlayEnumMemberValueHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
      },
    },
  },
}
