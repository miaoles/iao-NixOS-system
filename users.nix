{ config, pkgs, ... }:

{

	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.miles = {

		isNormalUser = true;
		extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
		home = "/home/miles";

	};

}
