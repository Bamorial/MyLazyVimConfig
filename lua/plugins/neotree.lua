return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            follow_file = true,
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },
}
