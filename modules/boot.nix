{ config, pkgs, ... }:

{
	boot = {
		loader.efi = { canTouchEfiVariables = true; };

		loader.grub = {
			enable = true;
			efiSupport = true;
			device = "nodev";
			useOSProber = true;
		};

		initrd.kernelModules = [ "amdgpu" ];
		
		# Keychron Function Keys
		extraModprobeConfig = ''
			options hid_apple fnmode=2
		'';

		tmpOnTmpfs = true;
	};
}
