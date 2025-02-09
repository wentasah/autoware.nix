# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-clang-format, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-cmake, autoware-universe-utils, message-filters, nav-msgs, radar-msgs, rclcpp, rclcpp-components }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-radar-static-pointcloud-filter";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0ld4r8hf7xlbh2s4j0swl70apmrvrq1ag10pck8z9k7b55x7h55m";
    sparseCheckout = ["sensing/autoware_radar_static_pointcloud_filter/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/sensing/autoware_radar_static_pointcloud_filter/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-clang-format ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-universe-utils message-filters nav-msgs radar-msgs rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "autoware_radar_static_pointcloud_filter";
    license = with lib.licenses; [ asl20 ];
  };
}
