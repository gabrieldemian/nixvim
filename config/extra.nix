{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    nvim-surround
    plenary-nvim
    telescope-file-browser-nvim
    telescope-ui-select-nvim
    lazygit-nvim
    catppuccin-nvim
  ];

  extraConfigLua = ''
    local Map = vim.keymap.set

    require("catppuccin").setup({
      flavour = "macchiato",
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
      },
    })

    local function telescope_buffer_dir()
      return vim.fn.expand("%:p:h")
    end

    require("nvim-surround").setup()

    Map("n", "<leader>lg", ": LazyGit<cr>")

    local builtin = require("telescope.builtin")
    local telescope = require("telescope")
    local fb = telescope.extensions.file_browser

    telescope.load_extension("file_browser")
    telescope.load_extension("ui-select")

    Map("n", "fb", function()
      fb.file_browser({
        path = "%:p:h",
        cwd = telescope_buffer_dir(),
        respect_gitignore = true,
        hidden = true,
        grouped = false,
        previewer = true,
        initial_mode = "insert",
        layout_config = { height = 40 },
      })
    end)
  '';
}
