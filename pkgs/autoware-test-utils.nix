# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-index-cpp, ament-lint-auto, autoware-cmake, autoware-component-interface-specs, autoware-component-interface-utils, autoware-control-msgs, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-perception-msgs, autoware-planning-msgs, autoware-universe-utils, autoware-vehicle-msgs, lanelet2-io, nav-msgs, rclcpp, std-srvs, tf2-msgs, tf2-ros, tier4-api-msgs, tier4-planning-msgs, tier4-v2x-msgs, unique-identifier-msgs, yaml-cpp-vendor }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-test-utils";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/common/autoware_test_utils/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp autoware-component-interface-specs autoware-component-interface-utils autoware-control-msgs autoware-lanelet2-extension autoware-map-msgs autoware-perception-msgs autoware-planning-msgs autoware-universe-utils autoware-vehicle-msgs lanelet2-io nav-msgs rclcpp std-srvs tf2-msgs tf2-ros tier4-api-msgs tier4-planning-msgs tier4-v2x-msgs unique-identifier-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "ROS 2 node for testing interface of the nodes in planning module";
    license = with lib.licenses; [ asl20 ];
  };
}
