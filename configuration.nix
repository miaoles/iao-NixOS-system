# iao NixOS configuration

{ config, pkgs, ... }:

let
	unstable = import <nixos-unstable> {};
in
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
		./modules/wayland.nix
		./modules/amd.nix
		./modules/fonts.nix
		./modules/gaming.nix
		./modules/io.nix
	];
	
	nix = {
		package = pkgs.nixVersions.stable;
		#extraOptions = ''experimental-features = nix-command flakes'';
		#extraOptions = ''experimental-features = nix-command'';
		settings.experimental-features = [
			"nix-command"
			"flakes"
		];
	};
	
	environment.systemPackages = with pkgs; [
		file
		killall
		htop
		git
		unzip
		unar
		ntfs3g
		fzf
		fetchutils
		wget
		appimage-run
		featherpad
		openrgb
		i2c-tools
		jdk11
		ventoy-bin
		v4l-utils
		kid3
		ffmpeg
		glxinfo
		feh
		libexif
		fd
		scrot
		patchutils
		xdotool
		python3
	];
	
	# Set your time zone.
	time.timeZone = "America/New_York";

	# Select internationalisation properties.
	i18n.defaultLocale = "en_US.UTF-8";
	console = {
		font = "Lat2-Terminus16";
		keyMap = "us";
	};
	
	programs.steam.enable = true;

	# Before changing this value read the documentation for this option
	# (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
	system.stateVersion = "21.05"; # Did you read the comment?

	nixpkgs = {
		config = {
			allowUnfree = true;
		};
		config.permittedInsecurePackages = [
			"electron-12.2.3"
			"qtwebkit-5.212.0-alpha4"
		];
	};
}

