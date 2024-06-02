return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "leoluz/nvim-dap-go",
    "nvim-neotest/nvim-nio"
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dap")

    require("dapui").setup()
    require("dap-go").setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    dap.adapters.gdb = {
      type = "executable",
      command = "gdb",
      args = { "-i", "dap" }
    }

    vim.keymap.set("n", "<Leader>b", dap.set_breakpoint, {})
    vim.keymap.set("n", "<leader>c", dap.continue, {})
  end,
}
