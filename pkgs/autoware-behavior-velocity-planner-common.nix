# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-interpolation, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-motion-utils, autoware-objects-of-interest-marker-interface, autoware-perception-msgs, autoware-planning-msgs, autoware-route-handler, autoware-rtc-interface, autoware-universe-utils, autoware-vehicle-info-utils, autoware-velocity-smoother, diagnostic-msgs, eigen, eigen3-cmake-module, geometry-msgs, nav-msgs, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, tier4-api-msgs, tier4-planning-msgs, tier4-v2x-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-behavior-velocity-planner-common";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/behavior_velocity_planner/autoware_behavior_velocity_planner_common/";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-interpolation autoware-lanelet2-extension autoware-map-msgs autoware-motion-utils autoware-objects-of-interest-marker-interface autoware-perception-msgs autoware-planning-msgs autoware-route-handler autoware-rtc-interface autoware-universe-utils autoware-vehicle-info-utils autoware-velocity-smoother diagnostic-msgs eigen geometry-msgs nav-msgs pcl-conversions rclcpp rclcpp-components sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros tier4-api-msgs tier4-planning-msgs tier4-v2x-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_behavior_velocity_planner_common package";
    license = with lib.licenses; [ asl20 ];
  };
}
