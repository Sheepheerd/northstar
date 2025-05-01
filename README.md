<div align="center">
    <img src="https://raw.githubusercontent.com/NixOS/nixos-artwork/master/logo/nix-snowflake-colours.svg" width="96" height="96" />
    <h1>Northstar</h1>
    <p><b>NixVim done nice</b></p>
</div>

# Installation

Test Run: `nix run github:Sheepheerd/northstar`

### Adding it as a flake

1: Go to the flake.nix and add `northstar.url = "github:Sheepheerd/northstar"` to your inputs.

```nix
# flake
{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    northstar.url = "github:Sheepheerd/northstar";
  };
}
```

2: Run nix flake update

3: Install it by adding `inputs.northstar.packages.${system}.default` to your environment.systemPackages or home.packages. If you're using home-manager.

```nix
# packages
{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [
    inputs.northstar.packages.${system}.default
  ];
}
```

4: Rebuild your system.

</details>

## Testing your new configuration

To test your configuration simply run the following command

```
nix run .
```

# Insperation

- [spector700/Akari](https://github.com/spector700/Akari)
