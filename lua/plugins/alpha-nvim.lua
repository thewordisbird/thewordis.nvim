return {
  'goolord/alpha-nvim',
  section = {
    header = {
      type = "text",
      val = {
      },
      opts = {
        position = "center",
        hl = "Type",
      }
    },
  },
  config = function()
    local alpha = require "alpha"
    local dashboard = require "alpha.themes.dashboard"

    dashboard.section.header.val = {
      [[                                                                                                                                                                             ]],
      [[        _____      _____                                                                      _____                                                                          ]],
      [[       |     |    |     |                                                                    |     |                                                                         ]],
      [[       |     |    |     |                                                                    |     |_____                                           _____                    ]],
      [[  _____|     |____|     |                                                                    |     |     |                                         |     |                   ]],
      [[ |                |     |                                                                    |     |_____|                                         |_____|                   ]],
      [[ |_____       ____|     |_____   _________  _____ _____ _____  __________  __________  ______|     |_____  __________       ____ _____  _____ _____ _____  ______   _______  ]],
      [[       |     |    |           \ /         \|     |     |     |/          \/          \/            |     |/          \     |    V     \|     |     |     |/      \_/       \ ]],
      [[       |     |    |            |     ___   |     |     |     |            |           |            |     |    _______|     |   <o)     |     |     |     |                 | ]],
      [[       |     |    |     ||     |           |     |     |     |     ||     |     |_____|     ||     |     |           |     |  (\\_//   |     |     |     |     |     |     | ]],
      [[       |     \____|     ||     |     _____/|     |     |     |     ||     |     |     |     ||     |     |_______    |_____|  (_\_/    |     |     |     |     |     |     | ]],
      [[       |          |     ||     |           |\               /|            |     |     |            |     |           |     |     |     |\         /|     |     |     |     | ]],
      [[        \_________|_____||_____|\__________/ \_____________/  \___________/_____|      \___________|_____|\_________/|_____|_____|_____| \_______/ |_____|\____|_____|_____/ ]],
      [[                                                                                                                                                                             ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", "<cmd>ene <CR>"),
      dashboard.button("CTRL f", "󰈞  Find file"),
      dashboard.button("SPC f g", "󰈬  Find word"),
      dashboard.button("SPC f h", "󰊄  Find help"),
    }
    alpha.setup(dashboard.config)
  end
}
