return {
  "catppuccin/nvim",
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        treesitter = true,
      },
      custom_highlights = function(color)
        return {
          ["@property.go"] = { fg = color.red },
          ["@constant.builtin.go"] = { fg = color.red },
          ["@variable.parameter.go"] = { fg = color.text },
          ["@module.go"] = { fg = color.peach },
          ["@type.go"] = { fg = color.teal },
        }
      end,
    })
    vim.cmd[[colorscheme catppuccin-mocha]]
  end,
  name = "catppuccin",
  priority = 1000,
}
