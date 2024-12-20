# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-continental-msgs";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "nebula";
    rev = "f43a28d1a8a51aca5efcae9186139767154bc44f";
    sha256 = "1rvnvad9v10wqcaazm25l07dy5zh7xr0j3vl488g2a72svviph5d";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/nebula_messages/continental_msgs/";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Messages for Continental sensors";
    license = with lib.licenses; [ asl20 ];
  };
}
