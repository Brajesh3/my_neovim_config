-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  hl_add = {},
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
  transparency = false,
  theme_toggle = { "catppuccin", "one_light" },
}

M.ui = {
  cmp = {
    lspkind_text = true,
    style = "default",
    format_colors = { tailwind = true },
  },
  telescope = { style = "bordered" },
  statusline = {
    theme = "default",
    separator_style = "default",
  },
  tabufline = {
    enabled = true,
    lazyload = true,
  },
}

M.nvdash = {
  load_on_startup = false,
  header = {
    "                            ",
    "     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
    "   ▄▀███▄     ▄██ █████▀    ",
    "   ██▄▀███▄   ███           ",
    "   ███  ▀███▄ ███           ",
    "   ███    ▀██ ███           ",
    "   ███      ▀ ███           ",
    "   ▀██ █████▄▀█▀▄██████▄    ",
    "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
    "                            ",
    "     Powered By  eovim    ",
    "                            ",
  },
  buttons = {
    { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
    { txt = "  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
  },
}

M.mason = { pkgs = {}, skip = {} }

M.colorify = {
  enabled = true,
  mode = "bg",
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}

M.term = {
  winopts = { number = false },
  sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
  float = {
    relative = "editor",
    row = 0.3,
    col = 0.25,
    width = 0.5,
    height = 0.4,
    border = "single",
  },
}

M.lsp = { signature = true }

return M
