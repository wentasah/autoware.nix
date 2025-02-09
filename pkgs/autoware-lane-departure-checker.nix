# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-motion-utils, autoware-planning-msgs, autoware-test-utils, autoware-universe-utils, autoware-vehicle-info-utils, autoware-vehicle-msgs, boost, diagnostic-updater, eigen, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, tier4-debug-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-lane-departure-checker";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "17ps5z331alibq70p456c5dx4bh1m8jgjcyc8a59mzh2s1p47j1m";
    sparseCheckout = ["control/autoware_lane_departure_checker/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/control/autoware_lane_departure_checker/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-lanelet2-extension autoware-map-msgs autoware-motion-utils autoware-planning-msgs autoware-universe-utils autoware-vehicle-info-utils autoware-vehicle-msgs boost diagnostic-updater eigen geometry-msgs nav-msgs rclcpp rclcpp-components tf2 tf2-eigen tf2-geometry-msgs tf2-ros tier4-debug-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_lane_departure_checker package";
    license = with lib.licenses; [ asl20 ];
  };
}
