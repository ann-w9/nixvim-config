{
  plugins = {
    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;
    cmp-cmdline.enable = true;
    cmp = {
      enable = true;
      autoEnableSources = false;

      settings = {
        experimental = {
          ghost_text = true;
        };

        sources = [
          {name = "nvim_lsp";}
          {name = "luasnip";}
          {name = "buffer";}
          {name = "path";}
        ];

        snippet = {expand = "function(args) require('luasnip').lsp_expand(args.body) end";};

        performance = {
          debounce = 60;
          fetching_timeout = 200;
          max_view_entries = 30;
        };

        window = {
          completion = {
            border = "rounded";
            winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None";
          };
          documentation = {
            border = "rounded";
          };
        };

        formatting = {
          fields = ["kind" "abbr" "menu"];
          expandable_indicator = true;
        };

        mapping = {
          __raw = ''
            cmp.mapping.preset.insert({
              ['<C-j>'] = cmp.mapping.select_next_item(),
              ['<C-k>'] = cmp.mapping.select_prev_item(),
              ['<C-e>'] = cmp.mapping.abort(),

              ['<C-b>'] = cmp.mapping.scroll_docs(-4),

              ['<C-f>'] = cmp.mapping.scroll_docs(4),

              ['<C-Space>'] = cmp.mapping.complete(),

              ['<S-CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),

              ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                  cmp.select_next_item()
                elseif luasnip.locally_jumpable(1) then
                  luasnip.jump(1)
                else
                  fallback()
                end
              end, { "i", "s" }),
            })
          '';
        };
      };
    };
  };
  extraConfigLua = ''
        luasnip = require("luasnip")
        kind_icons = {
          Text = "󰊄",
          Method = " ",
          Function = "󰡱 ",
          Constructor = " ",
          Field = " ",
          Variable = "󱀍 ",
          Class = " ",
          Interface = " ",
          Module = "󰕳 ",
          Property = " ",
          Unit = " ",
          Value = " ",
          Enum = " ",
          Keyword = " ",
          Snippet = " ",
          Color = " ",
          File = "",
          Reference = " ",
          Folder = " ",
          EnumMember = " ",
          Constant = " ",
          Struct = " ",
          Event = " ",
          Operator = " ",
          TypeParameter = " ",
        } 

         local cmp = require'cmp'

     -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
     cmp.setup.cmdline({'/', "?" }, {
       sources = {
         { name = 'buffer' }
       }
     })

    -- Set configuration for specific filetype.
     cmp.setup.filetype('gitcommit', {
       sources = cmp.config.sources({
         { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
       }, {
         { name = 'buffer' },
       })
     })

     -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
     cmp.setup.cmdline(':', {
       sources = cmp.config.sources({
         { name = 'path' }
       }, {
         { name = 'cmdline' }
       }),
     })  '';
}
