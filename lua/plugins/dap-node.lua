return {
  {
    "mxsdev/nvim-dap-vscode-js",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dap-vscode-js").setup({
        debugger_path = vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter",
        adapters = { "pwa-node", "pwa-chrome", "node-terminal" },
      })

      local dap = require("dap")

      -- Node.js / NestJS
      dap.configurations.typescript = {
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch NestJS (ts-node)",
          runtimeExecutable = "npx",
          runtimeArgs = { "ts-node", "-r", "tsconfig-paths/register" },
          args = { "${workspaceFolder}/src/main.ts" },
          cwd = "${workspaceFolder}",
          sourceMaps = true,
          protocol = "inspector",
          console = "integratedTerminal",
          resolveSourceMapLocations = { "${workspaceFolder}/**", "!**/node_modules/**" },
        },
        {
          type = "pwa-node",
          request = "attach",
          name = "Attach to Process (--inspect)",
          processId = require("dap.utils").pick_process,
          cwd = "${workspaceFolder}",
          sourceMaps = true,
        },
        {
          type = "pwa-node",
          request = "launch",
          name = "Debug Jest Tests",
          runtimeExecutable = "npx",
          runtimeArgs = { "jest", "--runInBand", "--testPathPattern", "${file}" },
          cwd = "${workspaceFolder}",
          sourceMaps = true,
          console = "integratedTerminal",
        },
      }
      dap.configurations.javascript = dap.configurations.typescript
    end,
  },
}