{
      description = "iao NixOS configuration";

      inputs = {
            nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
            home-manager = {
                  url = "github:nix-community/home-manager";
                  inputs.nixpkgs.follows = "nixpkgs";
            };
      };

      outputs = { nixpkgs, home-manager }: {
            nixosConfigurations."iao" = nixpkgs.lib.nixosSystem {
                  system = "x86_64-linux";
                  modules = [
                        ./configuration.nix
                        ./hardware-configuration.nix # generate with nixos-generate-config
                        home-manager.nixosModules.home-manager
                        {
                              home-manager.useGlobalPkgs = true;
                              home-manager.useUserPackages = true;
                        }
                        ./modules/users.nix
                        ./modules/kernel.nix
                        ./modules/boot.nix
                        ./modules/security.nix
                        ./modules/network.nix
                        ./modules/sound.nix
                        ./modules/x11/x11.nix
                        ./modules/x11/lxqt.nix
                        ./modules/x11/bspwm.nix
                        ./modules/x11/sxhkd.nix
                        ./modules/wayland.nix
                        ./modules/amd.nix
                        ./modules/wine.nix
                        ./modules/fonts.nix
                        ./modules/gaming.nix
                        ./modules/io.nix
                        ./modules/virtualisation.nix
                  ];
            };
      };
}
