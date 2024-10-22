{
  imports = [
    ./keymaps.nix
    ./languages/lsp.nix
    ./languages/none-ls.nix
    ./languages/cmp.nix
    ./languages/luasnip.nix

    ./ui/lualine.nix
    ./ui/alpha.nix
  ];

  globals = {
    mapleader = " ";
    #maplocalleader = " ";
    have_nerd_font = true;
  };
  opts = {
    number = true;
    relativenumber = true;
    mouse = "a";
    showmode = false;
    cursorline = true;
    termguicolors = true;

    encoding = "utf-8";
    fileencoding = "utf-8";

    clipboard = {
      providers = {
        wl-copy.enable = true;
        xsel.enable = true;
      };
      register = "unnamedplus";
    };

    # Minimal number of screen lines to keep above and below the cursor
    scrolloff = 10;

    # Decrease update time
    updatetime = 250;

    # Decrease mapped sequence wait time
    # Displays which-key popup sooner
    timeoutlen = 300;

    # Preview subsitutions live, as you type!
    inccommand = "split";

    # Column
    wrap = false;
    signcolumn = "yes";
    colorcolumn = "80";

    # Search
    ignorecase = true;
    smartcase = true;
    hlsearch = true;
    incsearch = true;
    grepprg = "rg --vimgrep";
    grepformat = "%f:%l:%c:%m";

    # Tabs & Spaces
    expandtab = true;
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;
    smartindent = true;
    autoindent = true;
    breakindent = true;
    list = true;
    listchars.__raw = "{ tab = '» ', trail = '·', nbsp = '␣' }";
    #listchars = "eol:↲,tab:|->,lead:·,space: ,trail:•,extends:→,precedes:←,nbsp:␣";

    # Windows
    splitbelow = true;
    splitright = true;

    # Backup
    backup = false;
    backupdir = "/home/aes/.cache/neovim-files"; # TODO: use vars instead of hard coded.
    swapfile = true;
    undofile = true;
  };

  colorschemes.oxocarbon.enable = true;

  plugins = {
    bufferline.enable = true;
    which-key.enable = true;

    oil.enable = true;
    treesitter.enable = true;

    notify = {
      enable = true;
      backgroundColour = "#000000";
      fps = 60;
      render = "default";
      timeout = 500;
      topDown = true;
    };
  };
}
