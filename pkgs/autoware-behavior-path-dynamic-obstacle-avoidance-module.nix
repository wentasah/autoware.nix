# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-behavior-path-planner, autoware-behavior-path-planner-common, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-motion-utils, autoware-object-recognition-utils, autoware-perception-msgs, autoware-planning-msgs, autoware-signal-processing, autoware-universe-utils, autoware-vehicle-msgs, eigen3-cmake-module, geometry-msgs, lanelet2-core, pluginlib, rclcpp, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, tier4-planning-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-behavior-path-dynamic-obstacle-avoidance-module";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/behavior_path_planner/autoware_behavior_path_dynamic_obstacle_avoidance_module/";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-behavior-path-planner autoware-behavior-path-planner-common autoware-lanelet2-extension autoware-motion-utils autoware-object-recognition-utils autoware-perception-msgs autoware-planning-msgs autoware-signal-processing autoware-universe-utils autoware-vehicle-msgs geometry-msgs lanelet2-core pluginlib rclcpp tf2 tf2-eigen tf2-geometry-msgs tf2-ros tier4-planning-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_behavior_path_dynamic_obstacle_avoidance_module package";
    license = with lib.licenses; [ asl20 ];
  };
}
