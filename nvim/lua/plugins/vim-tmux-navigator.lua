return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
  },
  keys = {
    { "<c-h>", "<cmd><C-a>TmuxNavigateLeft<cr>" },
    { "<c-j>", "<cmd><C-a>TmuxNavigateDown<cr>" },
    { "<c-k>", "<cmd><C-a>TmuxNavigateUp<cr>" },
    { "<c-l>", "<cmd><C-a>TmuxNavigateRight<cr>" },
  },
}
