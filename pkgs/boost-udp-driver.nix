# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, boost-io-context, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, udp-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-boost-udp-driver";
  version = "1.2.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "transport_drivers";
    rev = "39ebd8afe1bb9760a6cd6272e428468480f6de90";
    sha256 = "0x376r7dp4xqk7cmbc9xqabswf4w9b4z3p7n8azwgf3jifivailj";
    sparseCheckout = ["udp_driver/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/udp_driver/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost boost-io-context lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle std-msgs udp-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "A library to write Synchronous and Asynchronous networking applications, ROS and ROS2 nodes";
    license = with lib.licenses; [ asl20 ];
  };
}
