# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, autoware-cmake, autoware-lanelet2-extension, autoware-localization-util, autoware-map-msgs, autoware-universe-utils, eigen, geometry-msgs, rclcpp, tf2-eigen }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-landmark-manager";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "08ddj62k10w752359xx5kf5xlx4y3ilk6ymwjfs30jmig5yy8z3q";
    sparseCheckout = ["localization/autoware_landmark_based_localizer/autoware_landmark_manager/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/localization/autoware_landmark_based_localizer/autoware_landmark_manager/";
  buildInputs = [ ament-cmake autoware-cmake eigen ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-localization-util autoware-map-msgs autoware-universe-utils geometry-msgs rclcpp tf2-eigen ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "The autoware_landmark_manager package";
    license = with lib.licenses; [ asl20 ];
  };
}
