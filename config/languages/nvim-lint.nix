{ lib, config, pkgs, ... }: {
  options = {
    nvim-lint.enable = lib.mkEnableOption "Enable nvim-lint module";
  };

  config = lib.mkIf config.nvim-lint.enable {
    extraPackages = with pkgs; [ checkstyle statix pylint ];
    plugins.lint = {
      enable = true;
      lintersByFt = {
        c = [ "cppcheck" ];
        cpp = [ "cppcheck" ];
        go = [ "golangci-lint" ];
        nix = [ "statix" ];
        # lua = [ "selene" ];
        # python = [ "pylint" ];
        javascript = [ "eslint_d" ];
        javascriptreact = [ "eslint_d" ];
        typescript = [ "eslint_d" ];
        typescriptreact = [ "eslint_d" ];
        json = [ "jsonlint" ];
        java = [ "checkstyle" ];
        haskell = [ "hlint" ];
        bash = [ "shellcheck" ];
      };
    };
  };
}
