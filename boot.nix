{ config, pkgs, ... }:

{

	boot.loader = {

		efi = {
			canTouchEfiVariables = true;
		};

		grub = {
			efiSupport = true;
		};

	};

}
