# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-freespace-planning-algorithms, autoware-interpolation, autoware-lane-departure-checker, autoware-lanelet2-extension, autoware-lint-common, autoware-motion-utils, autoware-object-recognition-utils, autoware-objects-of-interest-marker-interface, autoware-perception-msgs, autoware-planning-msgs, autoware-route-handler, autoware-rtc-interface, autoware-test-utils, autoware-universe-utils, autoware-vehicle-info-utils, geometry-msgs, magic-enum, rclcpp, tf2, tier4-planning-msgs, traffic-light-utils, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-behavior-path-planner-common";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0vvc0r1h7isq97wckmnkwhl2abfsdnn67r9c1jr3gz1r01qisbyb";
    sparseCheckout = ["planning/behavior_path_planner/autoware_behavior_path_planner_common/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/behavior_path_planner/autoware_behavior_path_planner_common/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-freespace-planning-algorithms autoware-interpolation autoware-lane-departure-checker autoware-lanelet2-extension autoware-motion-utils autoware-object-recognition-utils autoware-objects-of-interest-marker-interface autoware-perception-msgs autoware-planning-msgs autoware-route-handler autoware-rtc-interface autoware-universe-utils autoware-vehicle-info-utils geometry-msgs magic-enum rclcpp tf2 tier4-planning-msgs traffic-light-utils visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_behavior_path_planner_common package";
    license = with lib.licenses; [ asl20 ];
  };
}
