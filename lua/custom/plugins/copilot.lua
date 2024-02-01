return {
  "github/copilot.vim",
  config = function()
    vim.keymap.set({ 'n' }, '<leader>cp', ':Copilot enable<cr><cr>')
    vim.keymap.set({ 'n' }, '<leader>cd', ':Copilot disable<cr><cr>')
  end,
}
