{ pkgs, home, ... }:

{
  programs.waybar.enable = true;
  services.swaync.enable = true;
  services.swayidle.enable = true;
  services.awww.enable = true;
  services.wlsunset = {
    enable = true;
    latitude = "52.37"; # Amsterdam
    longitude = "4.90";
    temperature.day = 6500;
    temperature.night = 1500;
  };
}
