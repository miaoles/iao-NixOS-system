{ config, pkgs, ... }:

let
	unstable = import <nixos-unstable> {};
in
{
	services.xserver = {
		# Enable the X11 windowing system.
		enable = true;

		# Configure keymap in X11
		layout = "us";
		
		# Set DPI (Standard: 96)
		dpi = 96;
		
		# Configure Input
		libinput = {
			mouse = {
				scrollMethod = "button";
				scrollButton = 9;
			};
		};

		# Disable display managers, use startx in tty.
		displayManager.startx.enable = true;

		# Enable LXQt.
		desktopManager.lxqt.enable = true;

		# Enable bspwm & sxhkd.
		windowManager.bspwm = {
			enable = true;
			#package = unstable.bspwm;

			sxhkd = {
				#package = unstable.sxhkd;
			};
		};
	};

	environment.lxqt.excludePackages = [
		pkgs.openbox
		pkgs.lxqt.obconf-qt
		pkgs.lxqt.lxqt-panel
	];

	environment.systemPackages = with pkgs; [
		sxhkd
		tint2
		xtitle
		libsForQt5.qtstyleplugin-kvantum
	];
}
