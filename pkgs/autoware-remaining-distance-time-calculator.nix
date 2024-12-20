# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-internal-msgs, autoware-lanelet2-extension, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-route-handler, autoware-test-utils, autoware-universe-utils, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, std-msgs, tier4-planning-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-remaining-distance-time-calculator";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/autoware_remaining_distance_time_calculator/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-msgs autoware-lanelet2-extension autoware-motion-utils autoware-planning-msgs autoware-route-handler autoware-test-utils autoware-universe-utils geometry-msgs nav-msgs rclcpp rclcpp-components std-msgs tier4-planning-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "Calculates and publishes remaining distance and time of the mission.";
    license = with lib.licenses; [ asl20 ];
  };
}
