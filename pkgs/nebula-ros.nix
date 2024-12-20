# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, continental-msgs, continental-srvs, diagnostic-msgs, diagnostic-updater, geometry-msgs, nebula-common, nebula-decoders, nebula-hw-interfaces, nebula-msgs, pandar-msgs, pcl, radar-msgs, rclcpp, rclcpp-components, robosense-msgs, ros-environment, tf2-ros, velodyne-msgs, visualization-msgs, yaml-cpp }:
buildRosPackage rec {
  pname = "ros-rolling-nebula-ros";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "nebula";
    rev = "f43a28d1a8a51aca5efcae9186139767154bc44f";
    sha256 = "1rvnvad9v10wqcaazm25l07dy5zh7xr0j3vl488g2a72svviph5d";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/nebula_ros/";
  buildInputs = [ ament-cmake-auto ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ continental-msgs continental-srvs diagnostic-msgs diagnostic-updater geometry-msgs nebula-common nebula-decoders nebula-hw-interfaces nebula-msgs pandar-msgs pcl radar-msgs rclcpp rclcpp-components robosense-msgs tf2-ros velodyne-msgs visualization-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake-auto ros-environment ];

  meta = {
    description = "Nebula Lidar Drivers";
    license = with lib.licenses; [ asl20 ];
  };
}
