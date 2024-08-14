return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
      local lspconfig = require("lspconfig")
  
      local cmp_nvim_lsp = require("cmp_nvim_lsp")
  
      local keymap = vim.keymap 
  
      local opts = { noremap = true, silent = true }
      local on_attach = function(client, bufnr)
        opts.buffer = bufnr
  
      opts.desc = "Go to next diagnostic"
      vim.keymap.set("n", "gd", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
      vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<cr>', { silent = true })
      vim.keymap.set({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
      vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { silent = true })
      end
  
      local capabilities = cmp_nvim_lsp.default_capabilities()
      local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end
  
  
  
      lspconfig["tsserver"].setup({
          capabilities = capabilities,
          on_attach = on_attach,
      })
  
      lspconfig["svelte"].setup({
          capabilities = capabilities,
          on_attach = on_attach,
      })
  
      lspconfig["clangd"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })
  
      lspconfig["rust_analyzer"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })
       lspconfig["gopls"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      }) 
      lspconfig["zls"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })
  
      lspconfig["pyright"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })
  
      lspconfig["mojo"].setup({
          capabilities = capabilities,
          on_attach = on_attach,
          filetypes = {"mojo"}
      })
  
      lspconfig["emmet_ls"].setup({
            capabilities = capabilities,
            filetypes = { "html", "typescriptreact", "javascriptreact", "tsx" ,"css", "sass", "scss", "less", "svelte"},
          })
  
      lspconfig["gopls"].setup({
          capabilities = capabilities,
          on_attach = on_attach,
      })

        lspconfig["tailwindcss"].setup({
          capabilities = capabilities,
          on_attach = on_attach,
      })

      lspconfig["cssmodules_ls"].setup({
          capabilities = capabilities,
          on_attach = on_attach,
      })

      lspconfig["cssls"].setup({
          capabilities = capabilities,
          on_attach = on_attach,
            filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte"},
      })

        lspconfig["emmet_language_server"].setup({
          capabilities = capabilities,
          on_attach = on_attach,
      })
  
  
      lspconfig["lua_ls"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = {
                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                [vim.fn.stdpath("config") .. "/lua"] = true,
              },
            },
          },
        },
      })
    end,
  }
  
