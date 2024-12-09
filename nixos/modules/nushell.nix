{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [ nushell ];

  systemd.services.nushell = {
    environment = {
      XDG_CONFIG_HOME = "~/.config/";
    };
  };
}
