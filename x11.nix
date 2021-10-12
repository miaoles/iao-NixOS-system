{ config, pkgs, ... }:

{
	services.xserver = {
		# Enable the X11 windowing system.
		enable = true;

		# AMD Graphics
		videoDrivers = [ "amdgpu" ];

		# Configure keymap in X11
		layout = "us";

		# Disable display managers, use startx.
		displayManager.startx.enable = true;

		# Enable LXQt.
		desktopManager.lxqt.enable = true;

		# Enable bspwm.
		windowManager.bspwm.enable = true;
	};
	environment.lxqt.excludePackages = [
		pkgs.openbox
		pkgs.lxqt.lxqt-panel
		pkgs.lxqt.obconf-qt
		pkgs.xscreensaver
	];
	environment.systemPackages = with pkgs; [
		sxhkd
		tint2
	];
}
