{ config, pkgs, ... }:

{
	boot.loader = {
		efi = { canTouchEfiVariables = true; };

		initrd.kernelModules = [ "amdgpu" ];

		grub = {
			enable = true;
			efiSupport = true;
			device = "nodev";
		};
	};
}
