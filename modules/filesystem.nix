{ ... }:

{
      fileSystems."/" =
            {
                  device = "/dev/disk/by-uuid/ed77b60a-4d96-4ce9-b46b-2dcf45463506";
                  fsType = "ext4";
            };

      fileSystems."/boot" =
            {
                  device = "/dev/disk/by-uuid/E7F3-44AD";
                  fsType = "vfat";
                  options = [ "fmask=0022" "dmask=0022" ];
            };

      swapDevices =
            [{ device = "/dev/disk/by-uuid/2e6d4cfa-4735-4f86-bdb3-1bae89260ac7"; }];
      #fileSystems = {
      #	"/" = {
      #		device ="dev/disk/by-uuid/6ea576c5-de1b-4421-aae0-86196a61fd7b";
      #		fsType = "ext4";
      #		#neededForBoot = true;
      #	};
      #	"/boot" = {
      #		device ="dev/disk/by-uuid/D037-40B9";
      #		fsType = "vfat";
      #		#neededForBoot = true;
      #		options = [ "fmask=0022" "dmask=0022" ];
      #	};
      #};
      #specialisation = {
      #	current.configuration.fileSystems = {
      #		"/" = lib.mkForce {
      #			device ="dev/disk/by-uuid/6ea576c5-de1b-4421-aae0-86196a61fd7b";
      #			fsType = "ext4";
      #			neededForBoot = true;
      #		};
      #		"/boot" = lib.mkForce {
      #			device ="dev/disk/by-uuid/D037-40B9";
      #			#fsType = "ext4";
      #			neededForBoot = true;
      #		};
      #	};
      #	new.configuration.fileSystems = {
      #		"/" = lib.mkForce {
      #			device ="dev/disk/by-uuid/90cd61f8-6b95-423e-ac6b-dcf933d3c421";
      #			fsType = "ext4";
      #			neededForBoot = true;
      #		};
      #		"/boot" = lib.mkForce {
      #			device ="dev/disk/by-uuid/A99D-49F7";
      #			fsType = "vfat";
      #			neededForBoot = true;
      #		};
      #	};
      #};
}
