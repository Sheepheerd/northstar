{ lib, config, pkgs, ... }: {
  options = {
    rustaceanvim.enable = lib.mkEnableOption "Enable rustaceanvi module";
  };

  config = lib.mkIf config.rustaceanvim.enable {
    plugins.rustaceanvim = { enable = true; };
  };
}

