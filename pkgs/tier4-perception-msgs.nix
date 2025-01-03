# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-perception-msgs, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, unique-identifier-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-tier4-perception-msgs";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "tier4_autoware_msgs";
    rev = "d0e52d3909fa7f65871872ea48eaf068882b9f3d";
    sha256 = "01brxzhz3pyz8zr95wd8sdiy3lq415sg5d426ys6lgm3f08rl90p";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/tier4_perception_msgs/";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-perception-msgs builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs std-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tier4_perception_msgs package";
    license = with lib.licenses; [ asl20 ];
  };
}
