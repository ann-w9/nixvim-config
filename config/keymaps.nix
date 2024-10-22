{
  keymaps = [
    {
      mode = ["n"];
      key = "<leader>e";
      action = "<Cmd>Oil<CR>";
      options = {desc = "Oil Explorer";};
    }
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
}
