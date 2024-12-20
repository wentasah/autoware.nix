# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-lint-common, nebula-sensor-driver, velodyne-monitor }:
buildRosPackage rec {
  pname = "ros-rolling-single-lidar-common-launch";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "single_lidar_sensor_kit_launch";
    rev = "52219a5a730708e2c22b2a8164a68f999bd35127";
    sha256 = "0ibx7chac7qx7kfwv3ac448krxjhf3ciiqqls343g7av6y854dw6";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/single_lidar_common_launch/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ nebula-sensor-driver velodyne-monitor ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The single_lidar_common_launch package";
    license = with lib.licenses; [ asl20 ];
  };
}
