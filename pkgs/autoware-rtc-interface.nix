# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-test-utils, autoware-universe-utils, rclcpp, tier4-rtc-msgs, unique-identifier-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-rtc-interface";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1l0471r2w383q397skpvhwy74f8pawrzfx0b8j58b5jn0jj6knab";
    sparseCheckout = ["planning/autoware_rtc_interface/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/autoware_rtc_interface/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-universe-utils rclcpp tier4-rtc-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_rtc_interface package";
    license = with lib.licenses; [ asl20 ];
  };
}
