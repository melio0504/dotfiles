return {
  { 
    "folke/noice.nvim", 
    enabled = false, 
  },
  {
    "nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
    },
  },
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        trigger = {
          show_on_keyword = false,
        },
        list = {
          selection = {
            preselect = false,
          },
        },
      },
  },
}
}