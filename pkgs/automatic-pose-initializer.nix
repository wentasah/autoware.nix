# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-adapi-specs, autoware-adapi-v1-msgs, autoware-cmake, autoware-component-interface-utils, autoware-lint-common, rclcpp, rclcpp-components }:
buildRosPackage rec {
  pname = "ros-rolling-automatic-pose-initializer";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1m2wgagzm21g3cqqvc9x10b31d73mc37z166wn7xbas8222r1l5y";
    sparseCheckout = ["system/default_ad_api_helpers/automatic_pose_initializer/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/system/default_ad_api_helpers/automatic_pose_initializer/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-specs autoware-adapi-v1-msgs autoware-component-interface-utils rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The automatic_pose_initializer package";
    license = with lib.licenses; [ asl20 ];
  };
}
