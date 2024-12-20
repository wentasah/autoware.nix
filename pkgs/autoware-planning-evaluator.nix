# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-motion-utils, autoware-perception-msgs, autoware-planning-msgs, autoware-route-handler, autoware-universe-utils, eigen, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-components, tf2, tf2-ros, tier4-metric-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-planning-evaluator";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/evaluator/autoware_planning_evaluator/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-motion-utils autoware-perception-msgs autoware-planning-msgs autoware-route-handler autoware-universe-utils eigen geometry-msgs nav-msgs pluginlib rclcpp rclcpp-components tf2 tf2-ros tier4-metric-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "ROS 2 node for evaluating planners";
    license = with lib.licenses; [ asl20 ];
  };
}
