# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-lint-common, autoware-motion-utils, autoware-perception-msgs, autoware-planning-msgs, autoware-planning-test-manager, autoware-signal-processing, autoware-universe-utils, autoware-vehicle-info-utils, diagnostic-msgs, nav-msgs, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, tier4-debug-msgs, tier4-planning-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-obstacle-stop-planner";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1pjmpapkppyc5dwsrxdqh25l39r5ibd3m8zhcagfal6jd9bxm94g";
    sparseCheckout = ["planning/autoware_obstacle_stop_planner/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/autoware_obstacle_stop_planner/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-motion-utils autoware-perception-msgs autoware-planning-msgs autoware-planning-test-manager autoware-signal-processing autoware-universe-utils autoware-vehicle-info-utils diagnostic-msgs nav-msgs pcl-conversions pcl-ros rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros tier4-debug-msgs tier4-planning-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_obstacle_stop_planner package";
    license = with lib.licenses; [ asl20 ];
  };
}
