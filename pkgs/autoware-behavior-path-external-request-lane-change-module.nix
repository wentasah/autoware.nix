# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-behavior-path-lane-change-module, autoware-behavior-path-planner, autoware-behavior-path-planner-common, autoware-cmake, autoware-lint-common, autoware-motion-utils, autoware-rtc-interface, autoware-universe-utils, eigen3-cmake-module, pluginlib, rclcpp, tier4-planning-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-behavior-path-external-request-lane-change-module";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0dbbxj3sgjlwydvjjvdck8a5g6mhq72j9aii0dfqdinj6c0r7kjh";
    sparseCheckout = ["planning/behavior_path_planner/autoware_behavior_path_external_request_lane_change_module/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/behavior_path_planner/autoware_behavior_path_external_request_lane_change_module/";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-behavior-path-lane-change-module autoware-behavior-path-planner autoware-behavior-path-planner-common autoware-motion-utils autoware-rtc-interface autoware-universe-utils pluginlib rclcpp tier4-planning-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_behavior_path_external_request_lane_change_module package";
    license = with lib.licenses; [ asl20 ];
  };
}
