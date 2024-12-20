{
  lock ? builtins.fromJSON (builtins.readFile ./flake.lock),
  nix-ros-overlay ? builtins.fetchTarball {
    url = "https://github.com/lopsided98/nix-ros-overlay/archive/${lock.nodes.nix-ros-overlay.locked.rev}.tar.gz";
    sha256 = lock.nodes.nix-ros-overlay.locked.narHash;
  },
  nixpkgs ? builtins.fetchTarball {
    url = "https://github.com/lopsided98/nixpkgs/archive/${lock.nodes.nixpkgs.locked.rev}.tar.gz";
    sha256 = lock.nodes.nixpkgs.locked.narHash;
  },
  system ? "x86_64-linux",
}:
let
  inherit (builtins) intersectAttrs mapAttrs elem;
  inherit (pkgs.lib) filterAttrs concatMapAttrs recurseIntoAttrs;
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
      (import "${nix-ros-overlay}/overlay.nix")
      rosDistroOverlays
    ];
  };
  rosDistros = filterAttrs (rosDistro: rosPkgs: rosPkgs ? overrideScope) pkgs.rosPackages;
  supportedRosDistros = filterAttrs (n: v: ! elem n ["noetic" "foxy"]) rosDistros;
  autowarePkgs = mapAttrs
    (rosDistro: rosPkgs: recurseIntoAttrs (intersectAttrs (autowareOverlay null null) rosPkgs))
    supportedRosDistros;
  flatten = prefix: attrs: concatMapAttrs (key: val:
    if val ? recurseForDerivations
    then flatten "${prefix}${key}-" val
    else { "${prefix}${key}" = val; }
  ) attrs;
in
autowarePkgs
