<h1 align="center">
      <img src="https://raw.githubusercontent.com/NixOS/nixos-artwork/master/logo/nix-snowflake-colours.svg" width="96px" height="96px" />
      <br>

Northstar

<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/palette/macchiato.png" width="600px" /> <br>

  <div align="center">

  <div align="center">
   <p></p>
      <a = href="https://nixos.org">
      <img src="https://img.shields.io/badge/NixOS-unstable-blue.svg?style=for-the-badge&labelColor=303446&logo=NixOS&logoColor=white&color=91D7E3">
    </a>
   <br>
</div>
</h1>
<p align=center>Standalone Nixvim flake based on Lazyvim with some more changes.</p>

---

<br>
</div>

# Installation

If you'd like to give it a try before installing: `nix run github:Sheepheerd/northstar`

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
    inputs.Akari.packages.${system}.default
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
