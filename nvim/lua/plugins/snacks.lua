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
          toggles = {
            hidden = false,
            ignored = false,
          },
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
