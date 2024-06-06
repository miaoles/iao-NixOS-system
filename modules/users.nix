{ pkgs, ... }:

{
      nix.settings.trusted-users = [
            "root"
            "@wheel"
      ];

      home-manager.useUserPackages = true;
      home-manager.useGlobalPkgs = true;

      users.users.miles = {
            isNormalUser = true;
            extraGroups = [
                  "wheel"
                  "sudo"
                  "audio"
                  "video"
                  "networkmanager"
                  "netdev"
                  "libvirtd"
                  "docker"
            ];
            home = "/home/miles";
            shell = pkgs.bash;
      };
}
