## Commands

```bash
git clone "https://github.com/tomfrost435/nixos.git" ./NixOS
```

```bash
cd NixOS
```

```bash
sudo nixos-rebuild switch --flake .#[hostname]
```

```bash
home-manager switch --flake .#[user]
```

## Structure

`flake.nix` leads to `hosts/[hostname]`, it also imports `nixos-modules` into all hosts

Each host has its own `configuration.nix` where they can toggle modules on or off

`configuration.nix` imports `hardware-configuration.nix`

Separately, `flake.nix` leads to `home-manager/home.nix`

## WIP

...
