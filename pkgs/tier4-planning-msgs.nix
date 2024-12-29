# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-common-msgs, autoware-perception-msgs, autoware-planning-msgs, builtin-interfaces, geometry-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, unique-identifier-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-tier4-planning-msgs";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "tier4_autoware_msgs";
    rev = "d0e52d3909fa7f65871872ea48eaf068882b9f3d";
    sha256 = "01brxzhz3pyz8zr95wd8sdiy3lq415sg5d426ys6lgm3f08rl90p";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/tier4_planning_msgs/";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-common-msgs autoware-perception-msgs autoware-planning-msgs builtin-interfaces geometry-msgs nav-msgs rosidl-default-runtime std-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tier4_planning_msgs package";
    license = with lib.licenses; [ asl20 ];
  };
}
