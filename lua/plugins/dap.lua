
return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
  },
  config = function()
    local dap = require("dap")
    local ui = require("dapui")
    require("dapui").setup()
    require("nvim-dap-virtual-text").setup()

    dap.adapters.lldb = {
      type = "executable",
      command = "/Applications/Xcode.app/Contents/Developer/usr/bin/lldb-dap",
      name = "lldb",
    }

    dap.configurations.cpp = {
      {
        name = "compiler_test",
        type = "lldb",
        request = "launch",
        program = "${workspaceFolder}/build/test/compiler_test",
        cwd = "${workspaceFolder}/build/test",
        stopOnEntry = false,
        args = function()
          local filter = vim.fn.input("gtest filter: ", "ScannerTest.Scan_2Plus2")
          if filter == "" then
            return { "--gtest_also_run_disabled_tests" }
          end
          return {
            "--gtest_filter=" .. filter,
            "--gtest_also_run_disabled_tests",
          }
        end,
      }
    }
    vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
    vim.keymap.set("n", "<leader>dc", dap.run_to_cursor)
    vim.keymap.set("n", "<leader>?", function()
      require("dapui").eval(nil, { enter = true})
    end)

    dap.listeners.before.attach.config = function()
      ui.open()
    end
    dap.listeners.before.launch.config = function()
      ui.open()
    end
    dap.listeners.before.event_terminated.config = function()
      ui.close()
    end
    dap.listeners.before.event_exited.config = function()
      ui.close()
    end
    vim.keymap.set("n", "<leader>ds", dap.continue)
    vim.keymap.set("n", "<leader>dr", dap.restart)
    vim.keymap.set("n", "<leader>dh", dap.step_out)
    vim.keymap.set("n", "<leader>dj", dap.step_into)
    vim.keymap.set("n", "<leader>dk", dap.restart_frame)
    vim.keymap.set("n", "<leader>dl", dap.step_over)
  end
}
