{ lib, config, ... }: {
  options = { codium-nvim.enable = lib.mkEnableOption "Enable codium module"; };
  config = lib.mkIf config.codium-nvim.enable {

    plugins.codium-nvim = { enable = true; };
  };
}

