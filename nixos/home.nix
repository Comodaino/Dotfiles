{ pkgs, ... }:
let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-23.05.tar.gz";
in
  {
    imports = [
      (import "${home-manager}/nixos")
    ];
    home-manager.users.comodino = {
      /* The home.stateVersion option does not have a default and must be set */
      home.stateVersion = "18.09";

      gtk = {
        enable = true;
        theme = {
          name = "Catppuccin-Macchiato-Compact-Pink-dark";
          package = pkgs.catppuccin-gtk.override {
            accents = [ "pink" ];
            size = "compact";
            tweaks = [ "rimless" "black" ];
            variant = "macchiato";
          };
        };
      };
      home.pointerCursor = {
        name = "Adwaita";
        package = pkgs.gnome.adwaita-icon-theme;
        size = 24;
        x11 = {
          enable = true;
          defaultCursor = "Adwaita";
        };
      };

      programs.git = {
        enable = true;
        userName = "Comodaino";
        userEmail = "alespineto@gmail.com";
      };
    };
  }
