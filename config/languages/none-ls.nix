{
  plugins = {
    lsp-format = {
      enable = true;
    };
    none-ls = {
      enable = true;
      sources = {
        code_actions = {
          refactoring.enable = true;
          gitsigns.enable = true;
          statix.enable = true;
        };

        diagnostics = {
          checkstyle.enable = true;
          deadnix.enable = true;
          statix.enable = true;
          yamllint.enable = true;
          fish.enable = true;
          stylelint.enable = true;
          # ruff.enable = true;
        };

        formatting = {
          alejandra.enable = true;
          # nixfmt.enable = true;
          biome.enable = true;
          # clang = true;
          stylelint.enable = true;
          # ruff.enable = true;
          isort.enable = true;
          # pyflyby.enable = true;
        };
      };
    };
  };
}
