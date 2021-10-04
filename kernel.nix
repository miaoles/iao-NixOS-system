{ config, pkgs, ... }:

{
	boot.kernelPackages = with pkgs; unstable.linuxPackages_xanmod;
}
