# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-planning-msgs, autoware-test-utils, autoware-universe-utils, geometry-msgs, rclcpp, rclcpp-components, tf2-ros, yaml-cpp }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-route-handler";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/autoware_route_handler/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-map-msgs autoware-planning-msgs autoware-test-utils autoware-universe-utils geometry-msgs rclcpp rclcpp-components tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The route_handling package";
    license = with lib.licenses; [ asl20 ];
  };
}
