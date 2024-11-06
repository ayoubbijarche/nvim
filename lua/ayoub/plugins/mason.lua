return {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      local mason = require("mason")

      local mason_lspconfig = require("mason-lspconfig")
  
      local mason_tool_installer = require("mason-tool-installer")
  
      mason.setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
  
      mason_lspconfig.setup({
        -- list of servers for mason to install
        ensure_installed = {
          "tsserver",
          "rust_analyzer",
          "clangd",
          "emmet_ls",
          "cssls",
          "html",
          "svelte",
        },
        -- auto-install configured servers (with lspconfig)
        automatic_installation = true, -- not the same as ensure_installed
      })
  
      mason_tool_installer.setup({
        ensure_installed = {
          "prettier",
          "eslint",
        },
      })
    end,
  }
  
