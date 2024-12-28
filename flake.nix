{
  inputs = {
    nix-ros-overlay.url = "github:wentasah/nix-ros-overlay/lanelet2-maps-fix-cmake";
    nixpkgs.follows = "nix-ros-overlay/nixpkgs";  # IMPORTANT!!!
  };
  outputs = { self, nix-ros-overlay, nixpkgs }:
    nix-ros-overlay.inputs.flake-utils.lib.eachDefaultSystem (system:
      let
        inherit (builtins) intersectAttrs mapAttrs elem;
        inherit (pkgs.lib) filterAttrs concatMapAttrs recurseIntoAttrs isDerivation;
        autowareOverlay = import ./pkgs/overlay.nix;
        applyDistroOverlay =
          rosOverlay: rosPackages:
          rosPackages
          // mapAttrs (
            rosDistro: rosPkgs: if rosPkgs ? overrideScope then pkgs.recurseIntoAttrs (rosPkgs.overrideScope rosOverlay) else rosPkgs
          ) rosPackages;
        rosDistroOverlays = self: super: {
          # Apply the overlay to multiple ROS distributions
          rosPackages = applyDistroOverlay autowareOverlay super.rosPackages;
        };
        pkgs = import nixpkgs {
          inherit system;
          overlays = [
            nix-ros-overlay.overlays.default
            rosDistroOverlays
          ];
        };
        rosDistros = filterAttrs (rosDistro: rosPkgs: rosPkgs ? overrideScope) pkgs.rosPackages;
        supportedRosDistros = filterAttrs (n: v: ! elem n ["noetic" "foxy" "iron" "rolling"]) rosDistros;
        autowarePkgs = mapAttrs
          (rosDistro: rosPkgs: recurseIntoAttrs (intersectAttrs (autowareOverlay null null) rosPkgs))
          supportedRosDistros;
        flatten = prefix: attrs: concatMapAttrs (key: val:
          if isDerivation val
          then { "${prefix}${key}" = val; }
          else if val ? recurseForDerivations
          then flatten "${prefix}${key}-" val
          else {}
        ) attrs;
      in {
        legacyPackages = autowarePkgs;
        packages = flatten "" autowarePkgs // {
          update = pkgs.writeShellApplication {
            name = "update-autoware";
            runtimeInputs = with pkgs; [ ];
            text = builtins.readFile ./update.sh;
          };
        };
        checks = flatten "" autowarePkgs;
      }) // {
        overlays.default = import ./pkgs/overlay.nix;
      };
  nixConfig = {
    extra-substituters = [ "https://ros.cachix.org" ];
    extra-trusted-public-keys = [ "ros.cachix.org-1:dSyZxI8geDCJrwgvCOHDoAfOm5sV1wCPjBkKL+38Rvo=" ];
  };
}
