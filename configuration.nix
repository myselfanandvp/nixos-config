{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./modules/networking.nix
      ./modules/services.nix
      ./modules/users.nix
      ./modules/packages.nix
      ./modules/fonts.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Enable networking
  networking.networkmanager.enable = true; 
  time.timeZone = "Asia/Kolkata";

nix.settings.experimental-features = [
  "nix-command"
  "flakes"
];



  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "26.05"; 

}
