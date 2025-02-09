# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-behavior-velocity-planner-common, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-motion-utils, autoware-perception-msgs, autoware-planning-msgs, autoware-route-handler, autoware-test-utils, autoware-universe-utils, eigen, eigen3-cmake-module, geometry-msgs, pluginlib, rclcpp, tf2, tf2-eigen, tf2-geometry-msgs, tier4-planning-msgs, traffic-light-utils, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-behavior-velocity-traffic-light-module";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "04q6vj0n0j8v7l0cfkjyc9hi39fgqjfsn2q2a7sxjryw28lnmx7n";
    sparseCheckout = ["planning/behavior_velocity_planner/autoware_behavior_velocity_traffic_light_module/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/behavior_velocity_planner/autoware_behavior_velocity_traffic_light_module/";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-behavior-velocity-planner-common autoware-lanelet2-extension autoware-motion-utils autoware-perception-msgs autoware-planning-msgs autoware-route-handler autoware-universe-utils eigen geometry-msgs pluginlib rclcpp tf2 tf2-eigen tf2-geometry-msgs tier4-planning-msgs traffic-light-utils visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_behavior_velocity_traffic_light_module package";
    license = with lib.licenses; [ asl20 ];
  };
}
