require("gruvbox").setup({
  contrast = "hard",
})

require("monokai-pro").setup({
  day_night = {
    enable = false, -- turn off by default
    day_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
    night_filter = "ristretto",
  }
})

--vim.o.background = "light"

vim.cmd([[colorscheme gruvbox]])
