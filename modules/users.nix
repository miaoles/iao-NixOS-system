{ config, pkgs, ... }:

{
	nix.trustedUsers = [
		"root"
		"@wheel"
	];
	users.users.miles = {
		isNormalUser = true;
		extraGroups = [
			"wheel"
			"sudo"
			"audio"
			"video"
		];
		home = "/home/miles";
	};
}
