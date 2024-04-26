{
  plugins.none-ls = {
    enable = false;
    enableLspFormat = false;
    updateInInsert = false;
    onAttach = ''
      function(client, bufnr)
          if client.supports_method "textDocument/formatting" then
            vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format { bufnr = bufnr }
              end,
            })
          end
        end
    '';
    sources = {
      code_actions = {
        gitsigns.enable = true;
        statix.enable = true;
      };
      diagnostics = {
        checkstyle = {
          enable = true;
        };
        statix = {
          enable = true;
        };
      };
      formatting = {
        alejandra = {
          enable = true;
        };
        prettierd = {
          enable = true;
        };
        stylua = {
          enable = true;
        };
        rustywind = {
          enable = true;
        };
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>f";
      action = "<cmd>lua vim.lsp.buf.format()<cr>";
    }
  ];
}
