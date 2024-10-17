return {
  "tpope/vim-fugitive",
  config = function()
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
    vim.keymap.set("n", "<leader>ga", ":Git add -A<CR>")
    vim.keymap.set("n", "<leader>gc", ":Git commit -m '")
    vim.keymap.set("n", "<leader>p", function()
      vim.cmd.Git('push')
    end)
    vim.keymap.set("n", "<leader>P", function()
      vim.cmd.Git({'pull', '--rebase'})
    end)
    vim.keymap.set("n", "<leader>t", ":Git push -u origin ");
  end
}
