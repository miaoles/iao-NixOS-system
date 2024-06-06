{ pkgs, ... }:

{
      services.xserver.windowManager.bspwm = {
            enable = true;
            package = pkgs.bspwm;
      };
}
