# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, rclcpp, std-msgs, udp-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-boost-io-context";
  version = "1.2.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "transport_drivers";
    rev = "39ebd8afe1bb9760a6cd6272e428468480f6de90";
    sha256 = "0bdj256mq4m2lvja2k5apvb84p4hfmy8d6rxn5rs54vhiyx9yprs";
    sparseCheckout = ["io_context/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/io_context/";
  buildInputs = [ ament-cmake-auto boost ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs udp-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "A library to write Synchronous and Asynchronous networking applications";
    license = with lib.licenses; [ asl20 ];
  };
}
