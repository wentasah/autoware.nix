# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-map-msgs, autoware-point-types, autoware-pointcloud-preprocessor, autoware-test-utils, autoware-universe-utils, grid-map-pcl, grid-map-ros, nav-msgs, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-compare-map-segmentation";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1m318k1gqz2h38zx6czbpd14741ihd24jc289pm9zr98a9qb30g8";
    sparseCheckout = ["perception/autoware_compare_map_segmentation/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_compare_map_segmentation/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-map-msgs autoware-point-types autoware-pointcloud-preprocessor autoware-test-utils autoware-universe-utils grid-map-pcl grid-map-ros nav-msgs pcl-conversions rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The ROS 2 autoware_compare_map_segmentation package";
    license = with lib.licenses; [ asl20 ];
  };
}
