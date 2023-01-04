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
			#penultimate.enable = true;
			defaultFonts = {
				sansSerif = [ "Roboto" ];
				serif = [ "Roboto Slab" ];
				monospace = [ "Roboto Mono" ];
			};
			subpixel = {
				#rbga = rgb;
				#lcdfilter = light;
			};
			hinting = {
				enable = true;
			};
			antialias = true;
		};
	};
}
