{ config, pkgs, ... }:
{
  imports = [ ./modules/git.nix ];
  home.username = "miskat";
  home.homeDirectory = "/home/miskat";

  home.stateVersion = "25.05";
  home.packages = [ ];
  home.sessionVariables = { };
  programs.neovim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      mason-nvim
      vimtex
    ];
  };
  programs.home-manager.enable = true;
}
