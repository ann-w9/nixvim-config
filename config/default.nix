{
  imports = [
    ./keymaps.nix
    ./lsp.nix
    ./none-ls.nix
    ./cmp.nix
  ];
  globals = {
    mapleader = " ";
    #maplocalleader = " ";
    have_nerd_font = true;
  };

  keymaps = [
    # Disable arrow keys
    {
      mode = ["n" "i"];
      key = "<Up>";
      action = "<Nop>";
      options = {
        silent = true;
        noremap = true;
        desc = "Disable Up arrow key";
      };
    }
    {
      mode = ["n" "i"];
      key = "<Down>";
      action = "<Nop>";
      options = {
        silent = true;
        noremap = true;
        desc = "Disable Down arrow key";
      };
    }
    {
      mode = ["n" "i"];
      key = "<Right>";
      action = "<Nop>";
      options = {
        silent = true;
        noremap = true;
        desc = "Disable Right arrow key";
      };
    }
    {
      mode = ["n" "i"];
      key = "<Left>";
      action = "<Nop>";
      options = {
        silent = true;
        noremap = true;
        desc = "Disable Left arrow key";
      };
    }
    {
      mode = "n";
      key = "<leader>uw";
      action = ":lua ToggleWrap()<cr>";
      options = {
        silent = true;
        desc = "Toggle Line Wrap";
      };
    }
  ];

  extraConfigLua = ''
    local notify = require("notify")

    local function show_notification(message, level)
      notify(message, level, { title = "conform.nvim" })
    end

    function ToggleLineNumber()
    if vim.wo.number then
      vim.wo.number = false
      show_notification("Line numbers disabled", "info")
    else
      vim.wo.number = true
        vim.wo.relativenumber = false
        show_notification("Line numbers enabled", "info")
        end
        end

        function ToggleRelativeLineNumber()
        if vim.wo.relativenumber then
          vim.wo.relativenumber = false
          show_notification("Relative line numbers disabled", "info")
        else
          vim.wo.relativenumber = true
            vim.wo.number = false
            show_notification("Relative line numbers enabled", "info")
          end
        end

        function ToggleWrap()
          if vim.wo.wrap then
            vim.wo.wrap = false
            show_notification("Wrap disabled", "info")
          else
            vim.wo.wrap = true
              vim.wo.number = false
              show_notification("Wrap enabled", "info")
          end
        end

       if vim.lsp.inlay_hint then
         vim.keymap.set('n', '<leader>uh', function()
           vim.lsp.inlay_hint(0, nil)
         end, { desc = 'Toggle Inlay Hints' })
       end
  '';

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
    backup = true;
    swapfile = true;
    undofile = true;
  };

  colorschemes.oxocarbon.enable = true;

  plugins = {
    lualine.enable = true;
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
