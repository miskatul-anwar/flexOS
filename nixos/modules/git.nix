{ config, pkgs, ... }:

{
  # Install Git system-wide
  environment.systemPackages = with pkgs; [
    git # Git package
    git-lfs # Optional: Git Large File Storage
  ];

  # Git configuration
  programs.git = {
    enable = true;
    prompt.enable = true;
    config = {
      init = {
        defaultBranch = "main";
      };
    };
  };

  # Git LFS configuration
  programs.git.lfs = {
    enable = true;
  };
}
