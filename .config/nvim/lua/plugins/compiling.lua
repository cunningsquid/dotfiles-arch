return {
  {
  "Zeioth/compiler.nvim",
  cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
  dependencies = { "stevearc/overseer.nvim" },
  opts = {}
  },
  {
    "stevearc/overseer.nvim",
    commit = "68a2d344cea4a2e11acfb5690dc8ecd1a1ec0ce0",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 25,
        max_height = 25,
        default_detail = 1
      },
    },
  },
  vim.api.nvim_set_keymap('n', '<F6>', "<cmd>CompilerOpen<cr>", { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<S-F6>',
      "<cmd>CompilerStop<cr>"
  ..  "<cmd>CompilerRedo<cr>",
  { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<S-F7>', "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
}

