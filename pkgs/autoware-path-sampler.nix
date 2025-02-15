# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-index-python, ament-lint-auto, autoware-bezier-sampler, autoware-cmake, autoware-frenet-planner, autoware-interpolation, autoware-lint-common, autoware-motion-utils, autoware-perception-msgs, autoware-planning-msgs, autoware-testing, autoware-universe-utils, autoware-vehicle-info-utils, fake-test-node, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, std-msgs, tf2-ros, tier4-debug-msgs, tier4-planning-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-path-sampler";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0rk11ijak3c9s6crap8171yc1mfjsvjhk9krmv1qmahi2dp3qs9r";
    sparseCheckout = ["planning/sampling_based_planner/autoware_path_sampler/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/sampling_based_planner/autoware_path_sampler/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-index-python ament-lint-auto autoware-lint-common autoware-testing fake-test-node ];
  propagatedBuildInputs = [ autoware-bezier-sampler autoware-frenet-planner autoware-interpolation autoware-motion-utils autoware-perception-msgs autoware-planning-msgs autoware-universe-utils autoware-vehicle-info-utils geometry-msgs nav-msgs rclcpp rclcpp-components std-msgs tf2-ros tier4-debug-msgs tier4-planning-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Package for the sampling-based path planner";
    license = with lib.licenses; [ asl20 ];
  };
}
