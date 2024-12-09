{ pkgs, ... }:

{
  services.xserver = {
    xkb.layout = "us,ua,ru";
    xkb.options = "grp:alt_shift_toggle";
  };

  environment.systemPackages = with pkgs;[
    ibus-engines.openbangla-keyboard
    toipe
  ];
}
