{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        # generic
        # c
        clangd.enable = true;

        # style / css
        cssls.enable = true;
        # cssmodules_ls.enable = true;
        # css_variables.enable = true;
        # stylelint.enable = true;
        # somesass_ls.enable = true;

        # nix
        nixd.enable = true;
        nil-ls.enable = true;
        statix.enable = true;

        # python
        pyright.enable = true;
        ruff-lsp.enable = true;

        # typescript / js
        biome.enable = true;
        ts_ls = {
          enable = true;
          autostart = true;
          filetypes = [
            "javascript"
            "typescript"
            "javascriptreact"
            "typescriptreact"
          ];
          extraOptions = {
            settings = {
              javascript = {
                inlayHints = {
                  includeInlayEnumMemberValueHints = true;
                  includeInlayFunctionLikeReturnTypeHints = true;
                  includeInlayFunctionParameterTypeHints = true;
                  includeInlayParameterNameHints = "all";
                  includeInlayParameterNameHintsWhenArgumentMatchesName = true;
                  includeInlayPropertyDeclarationTypeHints = true;
                  includeInlayVariableTypeHints = true;
                  includeInlayVariableTypeHintsWhenTypeMatchesName = true;
                };
              };
              typescript = {
                inlayHints = {
                  includeInlayEnumMemberValueHints = true;
                  includeInlayFunctionLikeReturnTypeHints = true;
                  includeInlayFunctionParameterTypeHints = true;
                  includeInlayParameterNameHints = "all";
                  includeInlayParameterNameHintsWhenArgumentMatchesName = true;
                  includeInlayPropertyDeclarationTypeHints = true;
                  includeInlayVariableTgpeHints = true;
                  includeInlayVariableTypeHintsWhenTypeMatchesName = true;
                };
              };
            };
          };
        };

        # html
        html.enable = true;
        # emmet.enable = true;

        #shell
        bashls.enable = true;
        # fish_lsp.enable = true;

        # others
        marksman.enable = true;
        lua_ls.enable = true;
        zk.enable = true;
        yamlls.enable = true;
        texlab.enable = true;
        jsonls.enable = true;
        # gdscript.enable = true;
      };
      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
          "<leader>ca" = {
            action = "code_action";
            desc = "Code Action";
          };
        };
        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
      };
    };
  };
}
