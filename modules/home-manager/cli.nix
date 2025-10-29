{ pkgs, ... }:

{
  home.packages = with pkgs; [
    microfetch
  ];
}
