{ config, pkgs, ... }:

{
	nix.settings.trusted-users = [
		"root"
		"@wheel"
	];
	#nix.settings.trustedUsers = [
	#	"root"
	#	"@wheel"
	#];
	users.users.miles = {
		isNormalUser = true;
		extraGroups = [
			"wheel"
			"sudo"
			"audio"
			"video"
		];
		home = "/home/miles";
		shell = pkgs.bash;
	};
	users.users.phantombot = {
		isSystemUser = true;
		group = "phantombot";
		extraGroups = [
			"wheel"
			"sudo"
			"audio"
			"video"
		];
		home = "/iao/phantombot";
		createHome = true;
		shell = pkgs.bash;
	};
}
