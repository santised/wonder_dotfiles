return {
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<a-h>", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
      { "<a-l>", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
    },
    opts = {
      options = {
        offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-tree",
            highlight = "Directory",
            text_align = "center",
          },
        },
      },
    },
  },
}
