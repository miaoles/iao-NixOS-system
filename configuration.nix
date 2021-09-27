# iao nixos
# main configuration

{ config, pkgs, ... }:

{
	imports = [
		./hardware-configuration.nix
		./boot.nix
		./users.nix
		./network.nix
		./sound.nix
		./x11.nix
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

	environment.systemPackages = with pkgs; [
		sxhkd
		roboto
		wget
		featherpad
		mpv
		firefox-devedition-bin
	];

	# This value determines the NixOS release from which the default
	# settings for stateful data, like file locations and database versions
	# on your system were taken. It‘s perfectly fine and recommended to leave
	# this value at the release version of the first install of this system.
	# Before changing this value read the documentation for this option
	# (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
	system.stateVersion = "21.05"; # Did you read the comment?

}

