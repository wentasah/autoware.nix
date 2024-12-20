# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-behavior-velocity-planner-common, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-route-handler, autoware-universe-utils, boost, eigen, eigen3-cmake-module, geometry-msgs, pluginlib, rclcpp, sensor-msgs, tf2, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-behavior-velocity-speed-bump-module";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/behavior_velocity_planner/autoware_behavior_velocity_speed_bump_module/";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-behavior-velocity-planner-common autoware-lanelet2-extension autoware-motion-utils autoware-planning-msgs autoware-route-handler autoware-universe-utils boost eigen geometry-msgs pluginlib rclcpp sensor-msgs tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_behavior_velocity_speed_bump_module package";
    license = with lib.licenses; [ asl20 ];
  };
}
