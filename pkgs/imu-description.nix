# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto }:
buildRosPackage rec {
  pname = "ros-rolling-imu-description";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "sensor_component_description";
    rev = "0e3e23a0d987825492bdbb7276fa1e007b484fdf";
    sha256 = "1gjlvsrsl3vkgnj097iq549lyraqz9ac9b90x6y6kb5zrnknjp7d";
    sparseCheckout = ["imu_description/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/imu_description/";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The imu_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
