# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-behavior-path-planner, autoware-behavior-path-planner-common, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-motion-utils, autoware-objects-of-interest-marker-interface, autoware-perception-msgs, autoware-route-handler, autoware-rtc-interface, autoware-signal-processing, autoware-test-utils, autoware-universe-utils, autoware-vehicle-info-utils, eigen3-cmake-module, geometry-msgs, magic-enum, pluginlib, rclcpp, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, tier4-planning-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-behavior-path-static-obstacle-avoidance-module";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1ifgylny8y5xnlim3mwhkwh9p9kj07slk3qwbwdifmscr4khg8gv";
    sparseCheckout = ["planning/behavior_path_planner/autoware_behavior_path_static_obstacle_avoidance_module/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/behavior_path_planner/autoware_behavior_path_static_obstacle_avoidance_module/";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-behavior-path-planner autoware-behavior-path-planner-common autoware-lanelet2-extension autoware-motion-utils autoware-objects-of-interest-marker-interface autoware-perception-msgs autoware-route-handler autoware-rtc-interface autoware-signal-processing autoware-test-utils autoware-universe-utils autoware-vehicle-info-utils geometry-msgs magic-enum pluginlib rclcpp sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros tier4-planning-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_behavior_path_static_obstacle_avoidance_module package";
    license = with lib.licenses; [ asl20 ];
  };
}
