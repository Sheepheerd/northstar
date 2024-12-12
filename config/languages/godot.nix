{ lib, config, pkgs, ... }: {
  options = { godot.enable = lib.mkEnableOption "Enable godot module"; };

  config = lib.mkIf config.godot.enable { plugins.godot = { enable = true; }; };
}

