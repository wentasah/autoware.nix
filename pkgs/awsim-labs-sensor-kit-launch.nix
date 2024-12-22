# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-gnss-poser, autoware-lint-common, autoware-pointcloud-preprocessor, common-sensor-launch, tamagawa-imu-driver, topic-tools, ublox-gps, usb-cam }:
buildRosPackage rec {
  pname = "ros-rolling-awsim-labs-sensor-kit-launch";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "awsim_labs_sensor_kit_launch";
    rev = "c162d49adad64ef272273e6bda5cc21e1d9029bc";
    sha256 = "1ddzdlcqsk4mx4j5n9fqn8lgnphpxfdcr98dy2faj9ckn9jdm9cq";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/awsim_labs_sensor_kit_launch/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-gnss-poser autoware-pointcloud-preprocessor common-sensor-launch tamagawa-imu-driver topic-tools ublox-gps usb-cam ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The awsim_labs_sensor_kit_launch package";
    license = with lib.licenses; [ asl20 ];
  };
}
