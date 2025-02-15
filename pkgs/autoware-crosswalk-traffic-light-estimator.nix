# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-perception-msgs, autoware-planning-msgs, autoware-universe-utils, rclcpp, rclcpp-components, tier4-perception-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-crosswalk-traffic-light-estimator";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0rz08f140h0hj70j7w94f3ig9yzvh9pgl1fp259yaq6wgxx0wzsx";
    sparseCheckout = ["perception/autoware_crosswalk_traffic_light_estimator/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_crosswalk_traffic_light_estimator/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-map-msgs autoware-perception-msgs autoware-planning-msgs autoware-universe-utils rclcpp rclcpp-components tier4-perception-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_crosswalk_traffic_light_estimator package";
    license = with lib.licenses; [ asl20 ];
  };
}
