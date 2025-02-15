# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-behavior-path-planner, autoware-behavior-path-planner-common, autoware-cmake, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-universe-utils, eigen3-cmake-module, geometry-msgs, pluginlib, rclcpp, tier4-planning-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-behavior-path-side-shift-module";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1n3gnzr47fbnzpnfljgbj0vy54f7mj6ksg0amqn78yhhcachknai";
    sparseCheckout = ["planning/behavior_path_planner/autoware_behavior_path_side_shift_module/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/behavior_path_planner/autoware_behavior_path_side_shift_module/";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-behavior-path-planner autoware-behavior-path-planner-common autoware-motion-utils autoware-planning-msgs autoware-universe-utils geometry-msgs pluginlib rclcpp tier4-planning-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_behavior_path_side_shift_module package";
    license = with lib.licenses; [ asl20 ];
  };
}
