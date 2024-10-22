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
          statix.enable = true;
        };

        diagnostics = {
          deadnix.enable = true;
          statix.enable = true;
          # ruff.enable = true;
        };

        formatting = {
          alejandra.enable = true;
          # ruff.enable = true;
          isort.enable = true;
          # pyflyby.enable = true;
        };
      };
    };
  };
}
