# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-adapi-specs, autoware-adapi-v1-msgs, autoware-cmake, autoware-component-interface-utils, autoware-lint-common, autoware-map-height-fitter, rclcpp, rclcpp-components }:
buildRosPackage rec {
  pname = "ros-rolling-ad-api-adaptors";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0l5p537axh1smynyw5i6yc0nfvv9fvkjfrz0fivbvqsjf4p9a6hk";
    sparseCheckout = ["system/default_ad_api_helpers/ad_api_adaptors/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/system/default_ad_api_helpers/ad_api_adaptors/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-specs autoware-adapi-v1-msgs autoware-component-interface-utils autoware-map-height-fitter rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The ad_api_adaptors package";
    license = with lib.licenses; [ asl20 ];
  };
}
