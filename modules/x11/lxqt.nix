{ pkgs, ... }:

{
      services.xserver.desktopManager.lxqt.enable = true;

      environment.lxqt.excludePackages = with pkgs; [
            openbox
            lxqt.obconf-qt
            #lxqt.lxqt-panel
      ];

      environment.systemPackages = with pkgs; [
            #libsForQt5.qtstyleplugin-kvantum
            qt6Packages.qtstyleplugin-kvantum
            libsForQt5.breeze-icons

            tint2
            xtitle

            #lxqt.xdg-desktop-portal-lxqt

            lxqt.featherpad
            lxqt.qterminal
            lxqt.lximage-qt
            lxqt.lxqt-archiver
            lxqt.qps
            lxqt.screengrab
      ];

      xdg.portal = {
            extraPortals = with pkgs; [
                  lxqt.xdg-desktop-portal-lxqt
                  #xdg-desktop-portal-kde
                  #xdg-desktop-portal-gtk
            ];
            lxqt.enable = true;
      };
}
