{ config, pkgs, ... }:

{
	users.users.miles = {
		isNormalUser = true;
		extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
		home = "/home/miles";
	};
}
