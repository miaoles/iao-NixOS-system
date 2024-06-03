# iao NixOS configuration

{ pkgs, ... }:


{
      imports = [
            #<home-manager/nixos>
/*             ./hardware-configuration.nix
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
            ./modules/virtualisation.nix */
      ];

      # Before changing this value read the documentation for this option
      # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
      system.stateVersion = "24.11";

      nix = {
            package = pkgs.nixVersions.latest;
            settings.experimental-features = [
                  "nix-command"
                  "flakes"
            ];
      };

      nixpkgs.config = {
            allowUnfree = true;
            permittedInsecurePackages = [ ];
      };

      environment.systemPackages = with pkgs; [
            file
            killall
            htop
            git
            unzip
            unar
            ntfs3g
            fzf
            fetchutils
            wget
            appimage-run
            featherpad
            openrgb
            i2c-tools
            jdk
            ventoy-bin
            v4l-utils
            kid3
            ffmpeg
            glxinfo
            feh
            libexif
            fd
            scrot
            patchutils
            xdotool
            python3
            yt-dlp
            jq
            iwgtk
            networkmanagerapplet
            unar
      ];

      time.timeZone = "America/New_York";

      i18n.defaultLocale = "en_US.UTF-8";

      console = {
            font = "Lat2-Terminus16";
            keyMap = "us";
      };

      virtualisation.docker.enable = true;
}

