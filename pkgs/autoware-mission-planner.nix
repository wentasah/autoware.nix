# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-motion-utils, autoware-planning-msgs, autoware-route-handler, autoware-test-utils, autoware-universe-utils, autoware-vehicle-info-utils, geometry-msgs, pluginlib, rclcpp, rclcpp-components, tf2-geometry-msgs, tf2-ros, tier4-planning-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-mission-planner";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/autoware_mission_planner/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-lanelet2-extension autoware-map-msgs autoware-motion-utils autoware-planning-msgs autoware-route-handler autoware-universe-utils autoware-vehicle-info-utils geometry-msgs pluginlib rclcpp rclcpp-components tf2-geometry-msgs tf2-ros tier4-planning-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_mission_planner package";
    license = with lib.licenses; [ asl20 ];
  };
}
