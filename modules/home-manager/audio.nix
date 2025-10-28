{ pkgs, ... }:

{
  home.packages = with pkgs; [
    easyeffects
    calf # Used by easyeffects
    lsp-plugins # Used by easyeffects
  ];
}
