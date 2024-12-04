{ lib, config, ... }: {
  options = {
    codeium-nvim.enable = lib.mkEnableOption "Enable codeium module";
  };
  config = lib.mkIf config.codeium-nvim.enable {

    plugins.codeium-nvim = { enable = true; };
  };
}

