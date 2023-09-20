
{config, lib, pkgs, modulesPath, ... }:
{

  # Enable networking
  networking.networkmanager.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [
  thunar-archive-plugin
  thunar-volman
  ];

  #pipewire enabler
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  # If you want to use JACK applications, uncomment this
  jack.enable = true;
};
  programs.fish.enable = true;
  programs.hyprland.enable = true;
  services.blueman.enable = true;
  hardware.bluetooth.enable = true;
  sound.enable = true;

  nixpkgs.config.allowUnfree = true;

  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim
    neovim
    hyprland
    hyprpaper
    swaylock  
    alacritty
    wget
    git
    libgccjit
    brave
    neofetch
    binutils
    xfce.thunar
    xfce.thunar-archive-plugin
    rofi
    nerdfonts
    prusa-slicer
    starship
    gnumake
    zip
    unzip
    wl-clipboard
    gnumake
    python3
    wiki-tui
    btop
    raylib-games
    gh
    powertop
    gtk4
    gtk3
    gtk2
    catppuccin-gtk
    gnome.gnome-themes-extra
    gtk-engine-murrine
    feh 
    mpv
    gum
    shotman
    gitpkgs.clearsl
  #gnome.file-roller
  waybar
  xdg-desktop-portal-hyprland
  xdg-desktop-portal-gtk
  polkit
  xwayland
  gcc_multi
  dconf
  flatpak
  eww-wayland


  #BLUETOOTH
  blueman
  bluez
  bluez-alsa
  bluez-tools

  #AUDIO
  alsa-oss
  alsa-lib
  alsa-utils
  alsa-tools
  alsa-plugins
  pavucontrol
  wireplumber
  spotify
  spicetify-cli
  spotifyd
  spotify-tui

  #DEVELOPMENT
  jetbrains.idea-ultimate
  jetbrains.clion
  jetbrains.pycharm
  vscodium
  ncurses
  jetbrains-toolbox
  llvmPackages_rocm.clang-tools-extra

  #COMMUNICATION
  telegram-desktop
  thunderbird
  openssh
  discord

  #SECURITY 
  gnupg
  pinentry
];
}
