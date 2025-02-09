# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-universe-utils, geometry-msgs, image-geometry, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, tier4-perception-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-traffic-light-map-based-detector";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1bkxifbday28df00s25idm2wmqwfhf23pdbfqqgv0wx4dypcg0zr";
    sparseCheckout = ["perception/autoware_traffic_light_map_based_detector/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_traffic_light_map_based_detector/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-map-msgs autoware-universe-utils geometry-msgs image-geometry rclcpp rclcpp-components sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros tier4-perception-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The autoware_traffic_light_map_based_detector package";
    license = with lib.licenses; [ asl20 ];
  };
}
