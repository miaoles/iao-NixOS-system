{ config, pkgs, ... }:

let
	unstable = import <nixos-unstable> {};
in
{
	services.xserver = {
		# AMD Graphics
		videoDrivers = [ "amdgpu" ];
	};
	hardware.opengl = {
		enable = true;
		
		#package = unstable.mesa.drivers;
		driSupport = true;
		
		#package32 = unstable.mesa.drivers;
		driSupport32Bit = true;
		
		#extraPackages = with unstable; [ mesa ];
		#extraPackages32 = with unstable; [ driversi686Linux.mesa ];
	};
}
