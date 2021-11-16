{ config, pkgs, ... }:

{
	fonts = {
		fonts = with pkgs; [
			roboto
			roboto-mono
			roboto-slab
			noto-fonts
			noto-fonts-cjk
			noto-fonts-emoji
		];
		
		fontconfig = {
			defaultFonts = {
				sansSerif = [ "Roboto" ];
				serif = [ "Roboto Slab" ];
				monospace = [ "Roboto Mono" ];
			};
		};
	};
}
