{
  plugins = {
    treesitter.enable = true;
    autoclose.enable = true;
    comment.enable = true;
    nvim-colorizer.enable = true;
    leap.enable = true;
    luasnip.enable = true;
    ts-autotag.enable = true;
    zen-mode.enable = true;
    fidget = {
      enable = true;
      extraOptions = {
        notification = {
          window = {
            winblend = 0;
          };
        };
      };
    };
    illuminate = {
      enable = false;
      underCursor = false;
      filetypesDenylist = [
        "DressingSelect"
        "Outline"
        "TelescopePrompt"
        "alpha"
        "harpoon"
        "toggleterm"
        "neo-tree"
        "Spectre"
        "reason"
      ];
    };
  };
  imports = [
    ./opts.nix

    ./extra.nix
    ./trouble.nix
    ./lualine.nix
    ./conform.nix
    ./transparent.nix
    ./bufferline.nix
    ./lsp/lsp.nix
    ./lsp/lspkind.nix
    ./lsp/lspsaga.nix

    ./telescope.nix
    ./none-ls.nix
    ./bufferline.nix
    ./rustaceanvim.nix
    ./cmp.nix

    ./keymaps.nix
  ];
}
