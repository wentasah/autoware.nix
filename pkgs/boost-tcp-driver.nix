# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage rec {
  pname = "ros-rolling-boost-tcp-driver";
  version = "0.0.1";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "transport_drivers";
    rev = "39ebd8afe1bb9760a6cd6272e428468480f6de90";
    sha256 = "13q7cf97hdvn9c52xr75m5c8p2lvwa94lpi0rlylbjbdkylzhcv4";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/tcp_driver/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "A library to write Synchronous and Asynchronous networking applications, ROS and ROS2 nodes";
    license = with lib.licenses; [ asl20 ];
  };
}
