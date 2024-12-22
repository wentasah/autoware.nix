# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-map-msgs, autoware-motion-utils, autoware-motion-velocity-dynamic-obstacle-stop-module, autoware-motion-velocity-obstacle-velocity-limiter-module, autoware-motion-velocity-out-of-lane-module, autoware-motion-velocity-planner-common, autoware-perception-msgs, autoware-planning-msgs, autoware-planning-test-manager, autoware-universe-utils, autoware-velocity-smoother, boost, eigen, eigen3-cmake-module, geometry-msgs, pcl-conversions, pluginlib, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, tier4-debug-msgs, tier4-metric-msgs, tier4-planning-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-motion-velocity-planner-node";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/motion_velocity_planner/autoware_motion_velocity_planner_node/";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module rosidl-default-generators ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-motion-velocity-dynamic-obstacle-stop-module autoware-motion-velocity-obstacle-velocity-limiter-module autoware-motion-velocity-out-of-lane-module autoware-planning-test-manager ];
  propagatedBuildInputs = [ autoware-map-msgs autoware-motion-utils autoware-motion-velocity-planner-common autoware-perception-msgs autoware-planning-msgs autoware-universe-utils autoware-velocity-smoother boost eigen geometry-msgs pcl-conversions pluginlib rclcpp rclcpp-components rosidl-default-runtime sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros tier4-debug-msgs tier4-metric-msgs tier4-planning-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "Node of the motion_velocity_planner";
    license = with lib.licenses; [ asl20 ];
  };
}
