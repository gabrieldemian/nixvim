{
  keymaps = [
    # keep cursor in place
    {
      mode = "x";
      key = "<leader>p";
      action = "_dP";
    }
    # copy to clipboard
    {
      mode = "n";
      key = "<leader>y";
      action = "\"+y";
    }
    {
      mode = "v";
      key = "<leader>y";
      action = "\"+y";
    }
    {
      mode = "n";
      key = "<leader>Y";
      action = "\"+Y";
    }
    {
      mode = "n";
      key = "x";
      action = "\"_x";
    }
    {
      mode = "n";
      key = "x";
      action = "\"_x";
    }
    # files
    {
      mode = "n";
      key = "WW";
      action = ":w!<enter>";
    }
    {
      mode = "n";
      key = "QQ";
      action = ":q!<enter>";
    }
    {
      mode = "n";
      key = "TT";
      action = ":TransparentToggle<CR>";
    }
    {
      mode = "n";
      key = "<leader>f";
      action = "<cmd>lua vim.lsp.buf.format()<cr>";
    }
    # lspsaga keys
    {
      key = "<leader>ca";
      action = "<cmd>Lspsaga code_action<cr>";
    }
    {
      key = "<leader>bf";
      action = "<cmd>Lspsaga show_buf_diagnostics<cr>";
    }
    {
      key = "<C-j>";
      action = "<cmd>Lspsaga diagnostic_jump_next<cr>";
    }
    {
      key = "<leader>d";
      action = "<cmd>Lspsaga show_line_diagnostics<cr>";
    }
    {
      key = "gT";
      action = "<cmd>Lspsaga goto_type_definition<cr>";
    }
    {
      key = "gt";
      action = "<cmd>Lspsaga peek_type_definition<cr>";
    }
    {
      key = "gD";
      action = "<cmd>Lspsaga goto_definition<cr>";
    }
    {
      key = "gd";
      action = "<cmd>Lspsaga peek_definition<cr>";
    }
    {
      key = "K";
      action = "<cmd>Lspsaga hover_doc<cr>";
    }
    {
      mode = [ "v" "i" "n" ];
      key = "<C-k>";
      action = "<cmd>lua vim.lsp.buf.signature_help<cr>";
    }
    {
      key = "<leader>rn";
      action = "<cmd>Lspsaga rename<cr>";
    }
    {
      key = "gh";
      action = "<cmd>Lspsaga finder<cr>";
    }
    # bufferline keys
    {
      key = "<Tab>";
      action = "<cmd>BufferLineCycleNext<cr>";
    }
    {
      key = "<S-Tab>";
      action = "<cmd>BufferLineCyclePrev<cr>";
    }
    {
      key = "<C-p>";
      action = "<cmd>BufferLinePick<cr>";
    }
    # transparent keys
    {
      key = "TT";
      action = ":TransparentToggle<cr>";
    }
  ];
}
