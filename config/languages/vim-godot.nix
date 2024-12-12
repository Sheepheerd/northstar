{ lib, config, pkgs, ... }: {
  options = { vim-godot.enable = lib.mkEnableOption "Enable godot module"; };

  config = lib.mkIf config.vim-godot.enable {
    plugins.vim-godot = { enable = true; };
  };
}

