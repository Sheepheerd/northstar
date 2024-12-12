{ lib, config, ... }: {
  imports = [
    ./treesitter-nvim.nix
    ./rustaceanvim.nix
    ./nvim-jdtls.nix
    ./nvim-lint.nix
    #    ./vim-godot.nix
    ./vimtex.nix
  ];

  options = {
    languages.enable = lib.mkEnableOption "Enable languages module";
  };
  config = lib.mkIf config.languages.enable {
    treesitter-nvim.enable = lib.mkDefault true;
    nvim-jdtls.enable = lib.mkDefault true;
    nvim-lint.enable = lib.mkDefault true;
    rustaceanvim.enable = lib.mkDefault true;
    #vim-godot.enable = lib.mkDefault true;
  };
}
