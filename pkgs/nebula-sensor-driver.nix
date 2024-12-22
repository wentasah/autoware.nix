# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, nebula-common, nebula-decoders, nebula-examples, nebula-hw-interfaces, nebula-ros, nebula-tests, pandar-msgs, velodyne-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-nebula-sensor-driver";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "nebula";
    rev = "f43a28d1a8a51aca5efcae9186139767154bc44f";
    sha256 = "1rvnvad9v10wqcaazm25l07dy5zh7xr0j3vl488g2a72svviph5d";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/nebula_sensor_driver/";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nebula-common nebula-decoders nebula-examples nebula-hw-interfaces nebula-ros nebula-tests pandar-msgs velodyne-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package for nebula sensor drivers related packages";
    license = with lib.licenses; [ asl20 ];
  };
}
