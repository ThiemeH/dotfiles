{ config, pkgs, ... }:

{
  home.username = "skye";
  home.homeDirectory = "/home/skye";
  home.stateVersion = "26.05";

  imports = [
    ./modules/desktop/niri.nix
    ./modules/desktop/apps.nix
    ./modules/shell/aliases.nix
    ./modules/shell/tools.nix
    ./modules/shell/zsh.nix
  ];

  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
