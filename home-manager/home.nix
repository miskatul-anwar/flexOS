{ config, pkgs, ... }:
{
  imports = [
    ./modules/git.nix
  ];
  home.username = "miskat";
  home.homeDirectory = "/home/miskat";

  home.stateVersion = "25.05";
  home.packages = [ ];
  home.sessionVariables = { };
  programs.home-manager.enable = true;
}
