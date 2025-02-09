# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, rclcpp, rclcpp-components, tier4-map-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-lanelet2-map-visualizer";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1bpi14gg8vsgsw53478wgldwb2gzasb2swyh8jjf3mhci74rlqfc";
    sparseCheckout = ["map/autoware_lanelet2_map_visualizer/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/map/autoware_lanelet2_map_visualizer/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-map-msgs rclcpp rclcpp-components tier4-map-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_lanelet2_map_visualizer package";
    license = with lib.licenses; [ asl20 ];
  };
}
