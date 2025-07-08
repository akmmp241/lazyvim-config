return {
  {
    "vyfor/cord.nvim",
    build = ":Cord update",
    opts = function()
      return {
        display = {
          theme = "default",
          flavor = "dark",
        },
        lazy = {
          -- change default idle icon to keyboard
          -- icon = require("cord.api.icon").get("keyboard"),
          -- or use another theme's idle icon
          -- icon = require("cord.api.icon").get("idle", "atom"),
          -- or use another theme's idle icon from a different flavor
          icon = require("cord.api.icon").get("idle", "atom", "light"),
        },
        text = {
          viewing = function()
            local hour = tonumber(os.date("%H"))
            local status = hour >= 22 and "🌙 Late night coding"
              or hour >= 18 and "🌆 Evening session"
              or hour >= 12 and "☀️ Afternoon coding"
              or hour >= 5 and "🌅 Morning productivity"
              or "🌙 Midnight hacking"

            return string.format("%s", status)
          end,
          editing = function()
            local hour = tonumber(os.date("%H"))
            local status = hour >= 22 and "🌙 Late night coding"
              or hour >= 18 and "🌆 Evening session"
              or hour >= 12 and "☀️ Afternoon coding"
              or hour >= 5 and "🌅 Morning productivity"
              or "🌙 Midnight hacking"

            return string.format("%s", status)
          end,
          workspace = function(opts)
            return string.format("Working on %s - %s", opts.filename, opts.workspace)
          end,
          idle = {
            timeout = 15000,
            details = function(opts)
              return string.format("Taking a break for a while....")
            end,
          },
        },
      }
    end,
  },
}
