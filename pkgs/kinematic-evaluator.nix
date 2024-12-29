# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-planning-msgs, autoware-universe-utils, diagnostic-msgs, eigen, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, tf2, tf2-ros }:
buildRosPackage rec {
  pname = "ros-rolling-kinematic-evaluator";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/evaluator/kinematic_evaluator/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-planning-msgs autoware-universe-utils diagnostic-msgs eigen geometry-msgs nav-msgs rclcpp rclcpp-components tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "kinematic evaluator ROS 2 node";
    license = with lib.licenses; [ asl20 ];
  };
}
