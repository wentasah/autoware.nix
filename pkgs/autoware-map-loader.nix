# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-gmock, ament-lint-auto, autoware-cmake, autoware-component-interface-specs, autoware-component-interface-utils, autoware-geography-utils, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, fmt, geometry-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, ros-testing, tier4-map-msgs, visualization-msgs, yaml-cpp }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-map-loader";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/map/autoware_map_loader/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto autoware-lint-common ros-testing ];
  propagatedBuildInputs = [ autoware-component-interface-specs autoware-component-interface-utils autoware-geography-utils autoware-lanelet2-extension autoware-map-msgs fmt geometry-msgs pcl pcl-conversions rclcpp rclcpp-components tier4-map-msgs visualization-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_map_loader package";
    license = with lib.licenses; [ asl20 ];
  };
}
