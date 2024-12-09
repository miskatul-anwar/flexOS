{ pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "miskatul-anwar";
    userEmail = "miskatul.anwar.csecu@gmail.com";
    lfs.enable = true;
    extraConfig = {
      push = { autoSetupRemote = true; };
    };
  };
}
