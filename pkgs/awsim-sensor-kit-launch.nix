# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-gnss-poser, autoware-lint-common, autoware-pointcloud-preprocessor, common-sensor-launch, tamagawa-imu-driver, topic-tools, ublox-gps, usb-cam }:
buildRosPackage rec {
  pname = "ros-rolling-awsim-sensor-kit-launch";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "awsim_sensor_kit_launch";
    rev = "495b3506d2462f15efe828f7bd43320889e88176";
    sha256 = "1ma0djw47mikr3xyix1g7x03n4awapm1f6zqfck3ysiwn8f8br7h";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/awsim_sensor_kit_launch/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-gnss-poser autoware-pointcloud-preprocessor common-sensor-launch tamagawa-imu-driver topic-tools ublox-gps usb-cam ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The awsim_sensor_kit_launch package";
    license = with lib.licenses; [ asl20 ];
  };
}
