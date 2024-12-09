{ pkgs, ... }:

{
  # USB Automounting
  services.gvfs.enable = true;
  # services.udisks2.enable = true;
  # services.devmon.enable = true;

  # Enable USB Guard
  services.usbguard = {
    enable = false;
    dbus.enable = false;
    implicitPolicyTarget = "block";
    # FIXME: set yours pref USB devices (change {id} to your trusted USB device), use `lsusb` command (from usbutils package) to get list of all connected USB devices including integrated devices like camera, bluetooth, wifi, etc. with their IDs or just disable `usbguard`
    rules = ''
      allow id 13d3:56a2 # device 1
      allow id 8087:0aaa # device 2
    '';
  };

  # Enable USB-specific packages
  environment.systemPackages = with pkgs; [
    usbutils
  ];
}
