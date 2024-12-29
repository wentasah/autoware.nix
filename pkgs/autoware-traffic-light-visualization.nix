# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-perception-msgs, cv-bridge, image-transport, message-filters, rclcpp, rclcpp-components, sensor-msgs, tier4-perception-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-traffic-light-visualization";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_traffic_light_visualization/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-perception-msgs cv-bridge image-transport message-filters rclcpp rclcpp-components sensor-msgs tier4-perception-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_traffic_light_visualization package";
    license = with lib.licenses; [ asl20 ];
  };
}
