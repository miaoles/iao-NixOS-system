{ pkgs, ... }:

{
      services = {
            xserver = {
                  enable = true;

                  xkb.layout = "us";

                  dpi = 96;

                  displayManager.startx.enable = true;

                  desktopManager.lxqt.enable = true;

                  #desktopManager.plasma5.enable = true;

                  windowManager.bspwm = {
                        enable = true;
                        package = pkgs.bspwm;

                        sxhkd = {
                              package = pkgs.sxhkd;
                        };
                  };
            };

            libinput = {
                  mouse = {
                        scrollMethod = "button";
                        scrollButton = 9;
                        accelSpeed = "0.5";
                  };
            };
      };

      environment.lxqt.excludePackages = with pkgs; [
            openbox
            lxqt.obconf-qt
            #lxqt.lxqt-panel
      ];

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

            #bspwm
            #sxhkd
            tint2
            xtitle

            xscreensaver

            libexif
            xdg-utils
            xdg-dbus-proxy
            xdg-desktop-portal
            lxqt.xdg-desktop-portal-lxqt

            lxqt.qterminal
            #lxqt.obconf-qt
            lxqt.lximage-qt
            lxqt.lxqt-archiver
            lxqt.qps
            lxqt.screengrab
      ];

      xdg.portal = {
            enable = true;
            xdgOpenUsePortal = true;
            #gtkUsePortal = true;
            extraPortals = with pkgs; [
                  lxqt.xdg-desktop-portal-lxqt
                  #xdg-desktop-portal-kde
                  #xdg-desktop-portal-gtk
            ];
            lxqt.enable = true;
      };

      services.dbus.enable = true;
}
