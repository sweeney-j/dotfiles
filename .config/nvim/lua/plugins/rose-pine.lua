return {
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000,
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
  end,
}
