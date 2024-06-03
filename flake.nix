{
      description = "Your NixOS configuration";

      inputs = {
            nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
            home-manager = {
                  url = "github:nix-community/home-manager";
                  inputs.nixpkgs.follows = "nixpkgs";
            };
      };

      outputs = { self, nixpkgs, home-manager }: {
            nixosConfigurations."iao" = nixpkgs.lib.nixosSystem {
                  system = "x86_64-linux";
                  modules = [
                        ./configuration.nix
                        home-manager.nixosModules.home-manager
                        {
                              home-manager.useGlobalPkgs = true;
                              home-manager.useUserPackages = true;
                        }
                        ./hardware-configuration.nix
                        ./modules/users.nix
                        ./modules/kernel.nix
                        ./modules/boot.nix
                        ./modules/security.nix
                        ./modules/network.nix
                        ./modules/sound.nix
                        ./modules/x11.nix
                        ./modules/wayland.nix
                        ./modules/amd.nix
                        ./modules/filesystem.nix
                        ./modules/fonts.nix
                        ./modules/gaming.nix
                        ./modules/io.nix
                        ./modules/virtualisation.nix
                  ];
            };
      };
}
