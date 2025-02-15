# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, boost, rclcpp, rclcpp-components, tier4-v2x-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-dummy-infrastructure";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0k68q8bqsm862h0r2lg9iyl7cgfc6003p4znwy5f9p48znzql33y";
    sparseCheckout = ["system/dummy_infrastructure/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/system/dummy_infrastructure/";
  buildInputs = [ ament-cmake-auto autoware-cmake boost ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components tier4-v2x-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "dummy_infrastructure";
    license = with lib.licenses; [ asl20 ];
  };
}
