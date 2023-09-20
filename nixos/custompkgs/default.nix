{pkgs, ...}: let
  callPackage = pkgs.callPackage;
in {
  nixpkgs.overlays = [(final: prev: {
    gitpkgs = {
      clearsl = callPackage ./gitpkgs/clearsl.nix {};
    };
  })];
}
