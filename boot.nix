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

		tmpOnTmpfs = true;
	};
}
