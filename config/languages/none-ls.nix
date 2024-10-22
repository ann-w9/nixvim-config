{
  plugins = {
    lsp-format = {
      enable = true;
    };
    none-ls = {
      enable = true;
      sources = {
        code_actions = {
          statix.enable = true;
        };
        diagnostics = {
          deadnix.enable = true;
          statix.enable = true;
        };

        formatting = {
          alejandra.enable = true;
        };
      };
    };
  };
}
