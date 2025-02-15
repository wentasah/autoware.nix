# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-livox-tag-filter";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0py97glxf2dp9bwdmkydczhrfipqg0qifcq1zlmxr9cb1yrg054z";
    sparseCheckout = ["sensing/livox/autoware_livox_tag_filter/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/sensing/livox/autoware_livox_tag_filter/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ pcl pcl-conversions rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_livox_tag_filter package";
    license = with lib.licenses; [ asl20 ];
  };
}
