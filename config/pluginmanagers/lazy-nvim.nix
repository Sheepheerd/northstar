{ lib, config, ... }: {
  options = {
    lazy-nvim.enable = lib.mkEnableOption "Enable lazy-nvim module";
  };
  config = lib.mkIf config.lazy-nvim.enable {
    plugins.lazy = { enable = true; };

    extraConfigLua = ''

        require("lazy").setup({
          {
            "supermaven-inc/supermaven-nvim",
            config = function()
              require("supermaven-nvim").setup({})
            end,
          },
      }, {})
    '';
  };
}
