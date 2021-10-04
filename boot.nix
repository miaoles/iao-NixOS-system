{ config, pkgs, ... }:

{
	boot = {
		loader.efi = { canTouchEfiVariables = true; };

		loader.grub = {
			enable = true;
			efiSupport = true;
			device = "nodev";
		};

		initrd.kernelModules = [ "amdgpu" ];
	};
}
