{ pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.miskat = {
    isNormalUser = true;
    description = "Miskatul Anwar";
    extraGroups = [ "networkmanager" "input" "wheel" "video" "audio" "tss" ];
    shell = pkgs.nushell;
    packages = with pkgs;
      [
        file-roller
        gnome-music
        spotify
        evince
        youtube-music
        discord
        tdesktop
        zoom-us
        caprine
        vscodium
        brave
        whatsapp-for-linux
      ];
  };

  # Change runtime directory size
  services.logind.extraConfig = "RuntimeDirectorySize=8G";
}