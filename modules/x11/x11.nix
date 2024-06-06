{ pkgs, ... }:

{
      services = {
            xserver = {
                  enable = true;

                  xkb.layout = "us";

                  dpi = 96;

                  displayManager.startx.enable = true;
            };

            libinput = {
                  mouse = {
                        scrollMethod = "button";
                        scrollButton = 9;
                        accelSpeed = "0.5";
                  };
            };
      };

      hardware.opengl = {
            enable = true;
            extraPackages = with pkgs; [
                  vaapiIntel
                  vaapiVdpau
                  libvdpau-va-gl
                  intel-media-driver
            ];
      };

      environment.systemPackages = with pkgs; [
            #libsForQt5.qtstyleplugin-kvantum
            qt6Packages.qtstyleplugin-kvantum
            libsForQt5.breeze-icons

            tint2
            xtitle

            xscreensaver

            libexif
            xdg-utils
            xdg-dbus-proxy
            xdg-desktop-portal
      ];

      xdg.portal = {
            enable = true;
            xdgOpenUsePortal = true;
      };

      services.dbus.enable = true;
}
