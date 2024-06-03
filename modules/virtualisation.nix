{ pkgs, ... }:

{
      programs.dconf.enable = true;

      environment.systemPackages = with pkgs; [
            #virt-manager-qt
            virt-manager
            virt-viewer
            spice
            spice-gtk
            spice-protocol
            win-virtio
            win-spice
      ];

      users.users.miles.extraGroups = [ "libvirtd" ];

      virtualisation = {
            libvirtd = {
                  enable = true;

                  qemu = {
                        swtpm.enable = true;
                        ovmf.enable = true;
                        ovmf.packages = [ pkgs.OVMFFull.fd ];
                  };
            };

            spiceUSBRedirection.enable = true;
      };

      services.spice-vdagentd.enable = true;
}
