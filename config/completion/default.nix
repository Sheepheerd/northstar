{ lib, config, ... }: {
  imports = [ ./cmp.nix ./lspkind.nix ./codeium-nvim.nix ./copilot.nix ];

  options = {
    completion.enable = lib.mkEnableOption "Enable completion module";
  };
  config = lib.mkIf config.completion.enable {
    cmp.enable = lib.mkDefault true;
    lspkind.enable = lib.mkDefault true;
    codeium-nvim.enable = lib.mkDefault false;
    copilot.enable = lib.mkDefault true;
  };
}
