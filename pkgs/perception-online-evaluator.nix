# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-motion-utils, autoware-object-recognition-utils, autoware-perception-msgs, autoware-universe-utils, autoware-vehicle-info-utils, diagnostic-msgs, eigen, geometry-msgs, glog, nav-msgs, pluginlib, rclcpp, rclcpp-components, tf2, tf2-ros }:
buildRosPackage rec {
  pname = "ros-rolling-perception-online-evaluator";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/evaluator/perception_online_evaluator/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-motion-utils autoware-object-recognition-utils autoware-perception-msgs autoware-universe-utils autoware-vehicle-info-utils diagnostic-msgs eigen geometry-msgs glog nav-msgs pluginlib rclcpp rclcpp-components tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "ROS 2 node for evaluating perception";
    license = with lib.licenses; [ asl20 ];
  };
}
