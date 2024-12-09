{
  imports = [
    ./nvidia.nix
    # ./disable-nvidia.nix
    ./opengl.nix
    # ./fingerprint-scanner.nix
    # ./clamav-scanner.nix
    # ./yubikey.nix
    ./sound.nix
    ./usb.nix
    ./keyboard.nix
    ./time.nix
    ./swap.nix
    ./bootloader.nix
    ./nix-settings.nix
    ./nixpkgs.nix
    ./gc.nix
    ./auto-upgrade.nix
    ./linux-kernel.nix
    ./screen.nix
    ./location.nix
    ./display-manager.nix
    ./theme.nix
    ./internationalisation.nix
    ./fonts.nix
    ./security-services.nix
    ./services.nix
    ./printing.nix
    # ./gnome.nix
    ./hyprland.nix
    ./environment-variables.nix
    ./bluetooth.nix
    ./networking.nix
    # ./mac-randomize.nix
    # ./open-ssh.nix
    ./mosh.nix
    ./firewall.nix
    ./dns.nix
    ./vpn.nix
    ./users.nix
    ./virtualisation.nix
    ./programming-languages.nix
    ./lsp.nix
    # ./rust.nix
    # ./wasm.nix
    ./info-fetchers.nix
    ./utils.nix
    ./terminal-utils.nix
    # ./llm.nix
    ./work.nix
    ./ascii.nix
    ./zsh.nix
    ./nushell.nix
    ./git.nix
    ./wine.nix
    ./emacs.nix
  ];
}
