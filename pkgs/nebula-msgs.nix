# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-nebula-msgs";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "nebula";
    rev = "f43a28d1a8a51aca5efcae9186139767154bc44f";
    sha256 = "1rvnvad9v10wqcaazm25l07dy5zh7xr0j3vl488g2a72svviph5d";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/nebula_messages/nebula_msgs/";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Generic sensor raw data messages for Nebula";
    license = with lib.licenses; [ asl20 ];
  };
}
