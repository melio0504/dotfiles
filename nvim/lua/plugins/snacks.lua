return {
  "folke/snacks.nvim",
  opts = {
    image = {
      enabled = true,
    },
    picker = {
      sources = {
        explorer = {
          follow_file = false,
          hidden = true,
          ignored = true,
          layout = {
            auto_hide = { "input" },
            layout = {
              width = 25,
            },
          },
          win = {
            list = {
              keys = {
                ["i"] = "",
                ["/"] = "",
              },
            },
          },
        },
      },
    },
  },
}
