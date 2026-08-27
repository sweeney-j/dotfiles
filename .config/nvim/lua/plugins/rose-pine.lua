return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      styles = {
        transparency = true,
	italic = false, 
	bold = false,
      },
      palette = {
        moon = {
          base = "#191F1F",
        },
      },
    })
    vim.cmd("colorscheme rose-pine-moon")
    local palette = require("rose-pine.palette")
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = palette.overlay })
    vim.api.nvim_set_hl(0, "Visual", { bg = palette.highlight_high })
  end,
}
