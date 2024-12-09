{ pkgs, lib, ... }:

{
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # Enable Security Services
  users.users.root.hashedPassword = "$6$RXwBB6vEpx9upnlC$Wellidzq/bbIZFVlM1c22dAhY21CaA9L/x048r.bu.toabSa44.efMlf2wlv6Lhgojf2sha34cR3zH9hDtnM.1";
  security.tpm2 = {
    enable = true;
    pkcs11.enable = true;
    tctiEnvironment.enable = true;
  };
  security.apparmor = {
    enable = true;
    packages = with pkgs; [
      apparmor-utils
      apparmor-profiles
    ];
  };
  services.fail2ban.enable = true;
  security.pam.services.hyprlock = { };
  # security.polkit.enable = true;
  programs.browserpass.enable = true;
  services.clamav = {
    daemon.enable = true;
    fangfrisch.enable = true;
    fangfrisch.interval = "daily";
    updater.enable = true;
    updater.interval = "daily"; #man systemd.time
    updater.frequency = 12;
  };
  programs.firejail = {
    enable = true;
    wrappedBinaries = {

      openbangla-keyboard = {
        executable = "${lib.getBin pkgs.ibus-engines.openbangla-keyboard}/bin/openbangla-keyboard";
        profile = "${pkgs.firejail}/etc/firejail/openbangla-keyboard.profile";
      };

      mpv = {
        executable = "${lib.getBin pkgs.mpv}/bin/mpv";
        profile = "${pkgs.firejail}/etc/firejail/mpv.profile";
      };

      imv = {
        executable = "${lib.getBin pkgs.imv}/bin/imv";
        profile = "${pkgs.firejail}/etc/firejail/imv.profile";
      };

      zathura = {
        executable = "${lib.getBin pkgs.zathura}/bin/zathura";
        profile = "${pkgs.firejail}/etc/firejail/zathura.profile";
      };

      discord = {
        executable = "${lib.getBin pkgs.discord}/bin/discord";
        profile = "${pkgs.firejail}/etc/firejail/discord.profile";
      };

      slack = {
        executable = "${lib.getBin pkgs.slack}/bin/slack";
        profile = "${pkgs.firejail}/etc/firejail/slack.profile";
      };

      telegram-desktop = {
        executable = "${lib.getBin pkgs.tdesktop}/bin/telegram-desktop";
        profile = "${pkgs.firejail}/etc/firejail/telegram-desktop.profile";
      };

      zoom-us = {
        executable = "${lib.getBin pkgs.zoom-us}/bin/zoom";
        profile = "${pkgs.firejail}/etc/firejail/zoom.profile";
      };

      whatsapp = {
        executable = "${lib.getBin pkgs.whatsapp-for-linux}/bin/whatsapp-for-linux";
        profile = "${pkgs.firejail}/etc/firejail/whatsapp-for-linux.profile";
      };

      caprine = {
        executable = "${lib.getBin pkgs.caprine}/bin/caprine";
        profile = "${pkgs.firejail}/etc/firejail/caprine.profile";
      };

      brave = {
        executable = "${lib.getBin pkgs.brave}/bin/brave";
        profile = "${pkgs.firejail}/etc/firejail/brave.profile";
      };

      qutebrowser = {
        executable = "${lib.getBin pkgs.qutebrowser}/bin/qutebrowser";
        profile = "${pkgs.firejail}/etc/firejail/qutebrowser.profile";
      };

      thunar = {
        executable = "${lib.getBin pkgs.xfce.thunar}/bin/thunar";
        profile = "${pkgs.firejail}/etc/firejail/thunar.profile";
      };

      vscodium = {
        executable = "${lib.getBin pkgs.vscodium}/bin/vscodium";
        profile = "${pkgs.firejail}/etc/firejail/vscodium.profile";
      };
    };
  };

  environment.systemPackages = with pkgs; [
    vulnix #scan command: vulnix --system
    clamav #scan command: sudo freshclam; clamscan [options] [file/directory/-]
    chkrootkit #scan command: sudo chkrootkit

    # passphrase2pgp
    pass-wayland
    pass2csv
    passExtensions.pass-tomb
    passExtensions.pass-update
    passExtensions.pass-otp
    passExtensions.pass-import
    passExtensions.pass-audit
    tomb
    pwgen
    pwgen-secure
  ];
}

