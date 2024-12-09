{ pkgs, ... }: {
  environment.systemPackages = with pkgs;[
    emacs
    emacsPackages.doom
    emacsPackages.doom-themes
    emacsPackages.doom-modeline
  ];
}
