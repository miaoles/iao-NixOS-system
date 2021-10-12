# iao NixOS configuration

{ config, pkgs, ... }:

{
	imports = [
		./hardware-configuration.nix
		./modules/kernel.nix
		./modules/boot.nix
		./modules/users.nix
		./modules/security.nix
		./modules/network.nix
		./modules/sound.nix
		./modules/x11.nix
		./modules/amd.nix
		./modules/fonts.nix
	];

	# Set your time zone.
	time.timeZone = "America/New_York";

	# Select internationalisation properties.
	i18n.defaultLocale = "en_US.UTF-8";
	console = {
		font = "Lat2-Terminus16";
		keyMap = "us";
	};

	# Enable CUPS to print documents.
	services.printing.enable = true;

	nixpkgs.config.allowUnfree = true;
	environment.systemPackages = with pkgs; [
		fzf
		git
		wget
		featherpad
	];

	# Before changing this value read the documentation for this option
	# (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
	system.stateVersion = "21.11"; # Did you read the comment?

}

