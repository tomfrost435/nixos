## Commands

```bash
git clone "https://github.com/tomfrost435/nixos.git" ~/NixOS
```

```bash
cd ~/NixOS
```

```bash
nixos-generate-config --dir ./hosts/[hostname]
```

```bash
git add .
```

```bash
sudo nixos-rebuild switch --flake .#[hostname]
```

```bash
nix run github:nix-community/home-manager -- home-manager switch --flake .#[user]
```

```bash
home-manager switch --flake .#[user]
```

```bash
nix flake update
```

## Structure

`flake.nix` leads to `hosts/[hostname]`, it also imports `nixos-modules` and `home-manager-modules` into all hosts

Each host has its own `configuration.nix` and `home.nix` where they can toggle modules on or off

`configuration.nix` imports `hardware-configuration.nix`

## WIP

- settle on terminal (bash, zsh, etc.)
- direnv
- neovim
- waybar
- sort modules into folders
- systemd?
- xdg
- home.file
- env variable and session variables
