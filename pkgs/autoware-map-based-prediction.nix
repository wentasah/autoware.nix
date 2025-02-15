# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-lint-auto, autoware-cmake, autoware-interpolation, autoware-lanelet2-extension, autoware-lint-common, autoware-motion-utils, autoware-perception-msgs, autoware-universe-utils, glog, rclcpp, rclcpp-components, tf2, tf2-geometry-msgs, tf2-ros, tier4-debug-msgs, unique-identifier-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-map-based-prediction";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1rjl7v4m7akjmpjph6n6ccfc7yksqqa6hwqwh6zk3ahc79ykjrlj";
    sparseCheckout = ["perception/autoware_map_based_prediction/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_map_based_prediction/";
  buildInputs = [ ament-cmake autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-interpolation autoware-lanelet2-extension autoware-motion-utils autoware-perception-msgs autoware-universe-utils glog rclcpp rclcpp-components tf2 tf2-geometry-msgs tf2-ros tier4-debug-msgs unique-identifier-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "This package implements a map_based_prediction";
    license = with lib.licenses; [ asl20 ];
  };
}
