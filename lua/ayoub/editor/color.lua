require("gruvbox").setup({
  contrast = "Light",
})

require("monokai-pro").setup({
  day_night = {
    enable = false, -- turn off by default
    day_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
    night_filter = "ristretto",
  }
})

vim.cmd([[colorscheme gruvbox]])
