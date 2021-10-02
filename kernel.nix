{ config, pkgs, ... }:

{
	boot.kernelPackages = pkgs.linux-xanmod;
}
