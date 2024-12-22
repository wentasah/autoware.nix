# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-msgs, autoware-lint-common, boost, rclcpp, rclcpp-components }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-component-monitor";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/system/autoware_component_monitor/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-msgs boost rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "A ROS 2 package to monitor system usage of component containers.";
    license = with lib.licenses; [ asl20 ];
  };
}
