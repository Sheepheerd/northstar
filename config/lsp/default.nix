{ lib, config, ... }: {
  imports =
    [ ./conform.nix ./fidget.nix ./lsp-nvim.nix ./lspsaga.nix ./trouble.nix ];

  options = { lsp.enable = lib.mkEnableOption "Enable lsp module"; };
  config = lib.mkIf config.dap.enable {
    conform.enable = lib.mkDefault false;
    fidget.enable = lib.mkDefault false;
    lsp-nvim.enable = lib.mkDefault true;
    lspsaga.enable = lib.mkDefault true;
    trouble.enable = lib.mkDefault true;
  };
}
