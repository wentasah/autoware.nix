# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, boost-io-context, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-boost-serial-driver";
  version = "1.2.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "transport_drivers";
    rev = "39ebd8afe1bb9760a6cd6272e428468480f6de90";
    sha256 = "13q7cf97hdvn9c52xr75m5c8p2lvwa94lpi0rlylbjbdkylzhcv4";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/serial_driver/";
  buildInputs = [ ament-cmake-auto boost ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost-io-context rclcpp rclcpp-components rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "A template class and associated utilities which encapsulate basic reading from serial ports";
    license = with lib.licenses; [ asl20 ];
  };
}
