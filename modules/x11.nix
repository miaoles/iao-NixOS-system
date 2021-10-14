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
			
		};

		# Disable display managers, use startx in tty.
		displayManager.startx.enable = true;

		# Enable LXQt.
		desktopManager.lxqt.enable = true;

		# Enable bspwm & sxhkd.
		windowManager.bspwm = {
			enable = true;
			#package = unstable.bspwm;
			#configFile = "/home/miles/Configuration/bspwm/bspwmrc";

			sxhkd = {
				#package = unstable.sxhkd;
				#configFile = "/home/miles/Configuration/sxhkd/sxhkdrc";
			};
		};
	};

	environment.lxqt.excludePackages = [
		pkgs.openbox
		pkgs.lxqt.lxqt-panel
		pkgs.lxqt.obconf-qt
		pkgs.xscreensaver
	];

	environment.systemPackages = with pkgs; [
		libinput
		sxhkd
		tint2
		xtitle
		libsForQt5.qtstyleplugin-kvantum
	];
}
