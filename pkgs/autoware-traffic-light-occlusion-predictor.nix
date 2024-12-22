# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-universe-utils, geometry-msgs, image-geometry, pcl-msgs, perception-utils, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-eigen, tf2-ros, tier4-perception-msgs, traffic-light-utils }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-traffic-light-occlusion-predictor";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_traffic_light_occlusion_predictor/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-map-msgs autoware-universe-utils geometry-msgs image-geometry pcl-msgs perception-utils rclcpp rclcpp-components sensor-msgs tf2 tf2-eigen tf2-ros tier4-perception-msgs traffic-light-utils ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The autoware_traffic_light_occlusion_predictor package";
    license = with lib.licenses; [ asl20 ];
  };
}
