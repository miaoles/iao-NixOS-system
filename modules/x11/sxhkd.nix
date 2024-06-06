{ pkgs, ... }:

{
      services.xserver.windowManager.bspwm.sxhkd = {
            package = pkgs.sxhkd;
      };
}
