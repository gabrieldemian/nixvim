{
  plugins.cmp = {
    enable = true;
    settings = {
      sources = [
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "async_path"; }
        { name = "buffer"; }
        { name = "luasnip"; }
        { name = "emoji"; }
        { name = "buffer"; }
        { name = "nvim_lsp"; }
        { name = "nvim_lsp_signature_help"; }
      ];
      snippet = {
        expand = "function(args) require('luasnip').lsp_expand(args.body) end";
      };
      # completion = ''
      #   cmp.config.window.bordered()
      # '';
      mapping = {
        "<C-p>" = "cmp.mapping.select_prev_item()";
        "<C-n>" = "cmp.mapping.select_next_item()";
        "<S-Tab>" = "cmp.mapping.select_prev_item()";
        "<Tab>" = "cmp.mapping.select_next_item()";
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.close()";
        "<CR>" = ''cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Insert,
          select = true,
        })'';
        "<C-x>" = ''cmp.mapping(
          cmp.mapping.complete({
            config = {
              sources = cmp.config.sources({
                { name = "cmp_ai" },
              }),
            },
          }),
          { "i" }
        )'';
      };
      extraOptions = {
        formatting = 
          ''
          format = function(entry, vim_item)
            -- if you have lspkind installed, you can use it like
            -- in the following line:
            vim_item.kind = lspkind.symbolic(vim_item.kind, { mode = "symbol" })
            vim_item.menu = source_mapping[entry.source.name]
            if entry.source.name == "cmp_ai" then
              local detail = (entry.completion_item.labelDetails or {}).detail
              vim_item.kind = ""
              if detail and detail:find(".*%%.*") then
                vim_item.kind = vim_item.kind .. " " .. detail
              end

              if (entry.completion_item.data or {}).multiline then
                vim_item.kind = vim_item.kind .. " " .. "[ML]"
              end
            end
            local maxwidth = 80
            vim_item.abbr = string.sub(vim_item.abbr, 1, maxwidth)
            return vim_item
          end,
          '';
      };
    };
  };
}
