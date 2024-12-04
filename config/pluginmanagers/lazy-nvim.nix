{ lib, config, ... }: {
  extraLuaConfig = ''
    require("lazy").setup({
        {
          "supermaven-inc/supermaven-nvim",
          config = function()
            require("supermaven-nvim").setup({})
          end,
        },
    }, {})


  '';
  options = {
    lazy-nvim.enable = lib.mkEnableOption "Enable lazy-nvim module";
  };
  config =
    lib.mkIf config.lazy-nvim.enable { plugins.lazy = { enable = true; }; };
}
