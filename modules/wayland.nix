{ config, pkgs, ... }:

let
	unstable = import <nixos-unstable> {};
in
{
	environment.systemPackages = with pkgs; [
		unstable.river
		unstable.foot
	];
}
