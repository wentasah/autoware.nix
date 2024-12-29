# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, diagnostic-updater, nebula-common, nebula-decoders, ros-environment, rosbag2-cpp }:
buildRosPackage rec {
  pname = "ros-rolling-nebula-tests";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "nebula";
    rev = "f43a28d1a8a51aca5efcae9186139767154bc44f";
    sha256 = "1rvnvad9v10wqcaazm25l07dy5zh7xr0j3vl488g2a72svviph5d";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/nebula_tests/";
  buildInputs = [ ament-cmake-auto ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ diagnostic-updater nebula-common nebula-decoders rosbag2-cpp ];
  nativeBuildInputs = [ ament-cmake-auto ros-environment ];

  meta = {
    description = "Nebula Lidar Drivers";
    license = with lib.licenses; [ asl20 ];
  };
}
