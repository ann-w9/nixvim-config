{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        nixd.enable = true;
        nil-ls.enable = true;
        pyright.enable = true;
        ruff-lsp.enable = true;
      };
    };
  };
}
