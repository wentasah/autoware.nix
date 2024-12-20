# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-motion-utils, autoware-motion-velocity-planner-common, autoware-perception-msgs, autoware-planning-msgs, autoware-route-handler, autoware-universe-utils, autoware-vehicle-info-utils, boost, geometry-msgs, pluginlib, rclcpp, tf2, tier4-planning-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-motion-velocity-dynamic-obstacle-stop-module";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/motion_velocity_planner/autoware_motion_velocity_dynamic_obstacle_stop_module/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-motion-utils autoware-motion-velocity-planner-common autoware-perception-msgs autoware-planning-msgs autoware-route-handler autoware-universe-utils autoware-vehicle-info-utils boost geometry-msgs pluginlib rclcpp tf2 tier4-planning-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "dynamic_obstacle_stop module to stop ego when in the immediate path of a dynamic object";
    license = with lib.licenses; [ asl20 ];
  };
}
