{ config, pkgs, ... }:

{
	fonts.fonts = with pkgs; [
		roboto
		roboto-mono
		roboto-slab
		noto-fonts
		noto-fonts-cjk
		noto-fonts-emoji
	];
}
