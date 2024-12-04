{ lib, config, pkgs, ... }: {
  options = {
    lazy-nvim.enable = lib.mkEnableOption "Enable lazy-nvim module";
  };
  config = lib.mkIf config.lazy-nvim.enable {
    plugins.lazy = { enable = true; };

  };
extraPlugins = with pkgs.vimPlugins; [
      supermaven-nvim
    ];
}
