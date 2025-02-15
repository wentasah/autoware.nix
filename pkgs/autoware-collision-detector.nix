# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-lint-common, autoware-perception-msgs, autoware-utils, autoware-vehicle-info-utils, diagnostic-msgs, diagnostic-updater, eigen, eigen3-cmake-module, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-collision-detector";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0dv06vlr4nlqladkg9zcackwhhbwdn5132ng1liisj72lnnbn3jk";
    sparseCheckout = ["control/autoware_collision_detector/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/control/autoware_collision_detector/";
  buildInputs = [ ament-cmake autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-perception-msgs autoware-utils autoware-vehicle-info-utils diagnostic-msgs diagnostic-updater eigen pcl pcl-conversions rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "The collision_detector package";
    license = with lib.licenses; [ asl20 ];
  };
}
