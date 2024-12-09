{ pkgs, ... }:

{
  # Setup Env Variables
  environment.variables = {
    JDK_PATH = "${pkgs.jdk23}/";
    NODEJS_PATH = "${pkgs.nodePackages_latest.nodejs}/";
    SPOTIFY_PATH = "${pkgs.spotify}/";
    PATH = "home/miskat/.emacs.d/bin";
    EDITOR = "${pkgs.neovim}/";
    CC = "clang";
    CXX = "clang++";
  };
}
