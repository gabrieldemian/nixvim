{
  plugins.telescope = {
    enable = true;

    extensions = {
      fzf-native = {
        enable = true;
      };
      ui-select = {
        settings = {
          specific_opts = {
            codeactions = true;
          };
        };
      };
      undo = {
        enable = true;
      };
    };

    keymaps = {
      "ff" = {
        action = "find_files";
      };
      "fg" = {
        action = "live_grep";
      };
      "fd" = {
        action = "diagnostics";
      };
      "sk" = {
        action = "keymaps";
      };
      # file browser actions are
      # handled in ./extra.nix
    };

  };
}
