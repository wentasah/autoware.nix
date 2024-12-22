# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto }:
buildRosPackage rec {
  pname = "ros-rolling-awsim-labs-vehicle-launch";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "awsim_labs_vehicle_launch";
    rev = "a7d1e7a64c3f7e4b27b49ea247ec6b82e713166f";
    sha256 = "17j3lkngyybhdwnp24q1g1gjif0jpc97nr7s9c0iyvg2z9q8gzix";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/awsim_labs_vehicle_launch/";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The awsim_labs_vehicle_launch package";
    license = with lib.licenses; [ "Apache-2.0-License" ];
  };
}
