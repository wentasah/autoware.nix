# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-grid-map-utils, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-universe-utils, grid-map-cv, grid-map-pcl, grid-map-ros, pcl, pcl-conversions, rclcpp, rclcpp-components, rosbag2-storage-default-plugins, tier4-external-api-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-elevation-map-loader";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0fi86varwimcch1pq9h4wycb0vfr4yyazfbiyxfra1g0h85n6wrb";
    sparseCheckout = ["perception/autoware_elevation_map_loader/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_elevation_map_loader/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-grid-map-utils autoware-lanelet2-extension autoware-map-msgs autoware-universe-utils grid-map-cv grid-map-pcl grid-map-ros pcl pcl-conversions rclcpp rclcpp-components rosbag2-storage-default-plugins tier4-external-api-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_elevation_map_loader package";
    license = with lib.licenses; [ asl20 ];
  };
}
