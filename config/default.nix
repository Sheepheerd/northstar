{ pkgs, ... }: {
  enableMan = false;
  # Import all your configuration modules here
  imports = [ ./plugins ];

  extraPackages = with pkgs; [ ripgrep fzf fd ];
}
