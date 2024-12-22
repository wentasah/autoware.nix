# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-behavior-velocity-planner-common, autoware-cmake, autoware-interpolation, autoware-lanelet2-extension, autoware-lint-common, autoware-motion-utils, autoware-perception-msgs, autoware-planning-msgs, autoware-universe-utils, autoware-vehicle-info-utils, boost, geometry-msgs, pluginlib, rclcpp, tier4-planning-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-behavior-velocity-no-stopping-area-module";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/behavior_velocity_planner/autoware_behavior_velocity_no_stopping_area_module/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-behavior-velocity-planner-common autoware-interpolation autoware-lanelet2-extension autoware-motion-utils autoware-perception-msgs autoware-planning-msgs autoware-universe-utils autoware-vehicle-info-utils boost geometry-msgs pluginlib rclcpp tier4-planning-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_behavior_velocity_no_stopping_area_module package";
    license = with lib.licenses; [ asl20 ];
  };
}
