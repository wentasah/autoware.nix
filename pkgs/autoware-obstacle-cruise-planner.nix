# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-interpolation, autoware-lanelet2-extension, autoware-lint-common, autoware-motion-utils, autoware-object-recognition-utils, autoware-osqp-interface, autoware-perception-msgs, autoware-planning-msgs, autoware-planning-test-manager, autoware-signal-processing, autoware-universe-utils, autoware-vehicle-info-utils, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, std-msgs, tf2, tf2-ros, tier4-debug-msgs, tier4-metric-msgs, tier4-planning-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-obstacle-cruise-planner";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "00165ddkdr2drlny5ni7dxsgr3r9rrcrj5bfcygx4d5l7pr4mhc0";
    sparseCheckout = ["planning/autoware_obstacle_cruise_planner/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/autoware_obstacle_cruise_planner/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-interpolation autoware-lanelet2-extension autoware-motion-utils autoware-object-recognition-utils autoware-osqp-interface autoware-perception-msgs autoware-planning-msgs autoware-planning-test-manager autoware-signal-processing autoware-universe-utils autoware-vehicle-info-utils geometry-msgs nav-msgs rclcpp rclcpp-components std-msgs tf2 tf2-ros tier4-debug-msgs tier4-metric-msgs tier4-planning-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_obstacle_cruise_planner package";
    license = with lib.licenses; [ asl20 ];
  };
}
