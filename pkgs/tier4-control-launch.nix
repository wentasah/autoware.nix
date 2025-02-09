# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-control-evaluator, autoware-external-cmd-converter, autoware-external-cmd-selector, autoware-lane-departure-checker, autoware-lint-common, autoware-shift-decider, autoware-trajectory-follower-node, autoware-vehicle-cmd-gate }:
buildRosPackage rec {
  pname = "ros-rolling-tier4-control-launch";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0wryax5l91vjfiwab45jdzq72zckqpqxmi8ms240dfp74xqbaizs";
    sparseCheckout = ["launch/tier4_control_launch/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/launch/tier4_control_launch/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-control-evaluator autoware-external-cmd-converter autoware-external-cmd-selector autoware-lane-departure-checker autoware-shift-decider autoware-trajectory-follower-node autoware-vehicle-cmd-gate ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The tier4_control_launch package";
    license = with lib.licenses; [ asl20 ];
  };
}
