# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-behavior-velocity-blind-spot-module, autoware-behavior-velocity-crosswalk-module, autoware-behavior-velocity-detection-area-module, autoware-behavior-velocity-intersection-module, autoware-behavior-velocity-no-drivable-lane-module, autoware-behavior-velocity-no-stopping-area-module, autoware-behavior-velocity-occlusion-spot-module, autoware-behavior-velocity-planner-common, autoware-behavior-velocity-run-out-module, autoware-behavior-velocity-speed-bump-module, autoware-behavior-velocity-stop-line-module, autoware-behavior-velocity-traffic-light-module, autoware-behavior-velocity-virtual-traffic-light-module, autoware-behavior-velocity-walkway-module, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-motion-utils, autoware-perception-msgs, autoware-planning-msgs, autoware-route-handler, autoware-universe-utils, autoware-velocity-smoother, boost, diagnostic-msgs, eigen, eigen3-cmake-module, geometry-msgs, pcl-conversions, pluginlib, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, tier4-api-msgs, tier4-planning-msgs, tier4-v2x-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-behavior-velocity-planner";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/behavior_velocity_planner/autoware_behavior_velocity_planner/";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module rosidl-default-generators ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-behavior-velocity-blind-spot-module autoware-behavior-velocity-crosswalk-module autoware-behavior-velocity-detection-area-module autoware-behavior-velocity-intersection-module autoware-behavior-velocity-no-drivable-lane-module autoware-behavior-velocity-no-stopping-area-module autoware-behavior-velocity-occlusion-spot-module autoware-behavior-velocity-run-out-module autoware-behavior-velocity-speed-bump-module autoware-behavior-velocity-stop-line-module autoware-behavior-velocity-traffic-light-module autoware-behavior-velocity-virtual-traffic-light-module autoware-behavior-velocity-walkway-module autoware-lint-common ];
  propagatedBuildInputs = [ autoware-behavior-velocity-planner-common autoware-lanelet2-extension autoware-map-msgs autoware-motion-utils autoware-perception-msgs autoware-planning-msgs autoware-route-handler autoware-universe-utils autoware-velocity-smoother boost diagnostic-msgs eigen geometry-msgs pcl-conversions pluginlib rclcpp rclcpp-components rosidl-default-runtime sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros tier4-api-msgs tier4-planning-msgs tier4-v2x-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_behavior_velocity_planner package";
    license = with lib.licenses; [ asl20 ];
  };
}
