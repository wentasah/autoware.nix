# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-lint-common, autoware-motion-utils, autoware-perception-msgs, autoware-planning-msgs, autoware-planning-test-manager, autoware-test-utils, autoware-universe-utils, autoware-vehicle-info-utils, diagnostic-msgs, eigen, eigen3-cmake-module, generate-parameter-library, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, tier4-planning-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-surround-obstacle-checker";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0393v5ifwyf6jif4kd25fzb053pi7c0hzxkxah3ychshxaw9v6ah";
    sparseCheckout = ["planning/autoware_surround_obstacle_checker/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/autoware_surround_obstacle_checker/";
  buildInputs = [ ament-cmake autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-motion-utils autoware-perception-msgs autoware-planning-msgs autoware-planning-test-manager autoware-universe-utils autoware-vehicle-info-utils diagnostic-msgs eigen generate-parameter-library pcl pcl-conversions rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros tier4-planning-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_surround_obstacle_checker package";
    license = with lib.licenses; [ asl20 ];
  };
}
