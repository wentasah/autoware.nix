# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, diagnostic-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage rec {
  pname = "ros-rolling-tier4-external-api-msgs";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "tier4_autoware_msgs";
    rev = "d0e52d3909fa7f65871872ea48eaf068882b9f3d";
    sha256 = "01brxzhz3pyz8zr95wd8sdiy3lq415sg5d426ys6lgm3f08rl90p";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/tier4_external_api_msgs/";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces diagnostic-msgs geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tier4_external_api_msgs package";
    license = with lib.licenses; [ asl20 ];
  };
}
