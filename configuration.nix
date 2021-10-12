# iao NixOS configuration

{ config, pkgs, ... }:

{
	imports = [
		./hardware-configuration.nix
		./kernel.nix
		./boot.nix
		./users.nix
		./security.nix
		./network.nix
		./sound.nix
		./x11.nix
		./amd.nix
		./fonts.nix
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
		git
		wget
		featherpad
	];

	# Before changing this value read the documentation for this option
	# (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
	system.stateVersion = "21.05"; # Did you read the comment?

}

