# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, velodyne-description }:
buildRosPackage rec {
  pname = "ros-rolling-sample-sensor-kit-description";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "sample_sensor_kit_launch";
    rev = "286e5d35e9d42b7ad765481a0d25c94e0a070afb";
    sha256 = "1cvds7yd1wfdvvv2yqjmd4b91shyg6643xvblvbqccmcybgi0q9f";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/sample_sensor_kit_description/";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ velodyne-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The sample_sensor_kit_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
