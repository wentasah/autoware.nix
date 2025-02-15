# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-python, ament-cmake-ros, ament-index-python, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-control-msgs, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-system-msgs, autoware-testing, autoware-universe-utils, autoware-vehicle-cmd-gate, autoware-vehicle-msgs, pybind11-vendor, python3Packages, rclcpp, rclcpp-components, ros-testing, ros2launch }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-smart-mpc-trajectory-follower";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "10n8nh0j1z2x19vnkr2rn90g22d036pdalr50hy8nbk44274mrih";
    sparseCheckout = ["control/autoware_smart_mpc_trajectory_follower/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/control/autoware_smart_mpc_trajectory_follower/";
  buildInputs = [ ament-cmake-auto ament-cmake-python autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-index-python ament-lint-auto autoware-lint-common autoware-testing ros-testing ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-control-msgs autoware-motion-utils autoware-planning-msgs autoware-system-msgs autoware-universe-utils autoware-vehicle-cmd-gate autoware-vehicle-msgs pybind11-vendor python3Packages.scipy python3Packages.torch rclcpp rclcpp-components ros2launch ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python autoware-cmake ];

  meta = {
    description = "Nodes to follow a trajectory by generating control commands using smart mpc";
    license = with lib.licenses; [ asl20 ];
  };
}
