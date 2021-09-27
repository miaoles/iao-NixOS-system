{ config, pkgs, ... }:

{

	# Enable the X11 windowing system.
	services.xserver.enable = true;

	# Disable display managers, use startx.
	services.xserver.displayManager.startx.enable = true;

	# Enable LXQt.
	services.xserver.desktopManager.lxqt.enable = true;

	# Enable bspwm.
	services.xserver.windowManager.bspwm.enable = true;

	# Configure keymap in X11
	services.xserver.layout = "us";

}
