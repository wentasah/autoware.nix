# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-morai-msgs";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "MORAI-Autonomous";
    repo = "MORAI-ROS2_morai_msgs";
    rev = "e2e75fc1603a9798773e467a679edf68b448e705";
    sha256 = "0d5v1ykkygwjqwiv07n8h59s9zjkac3s1zv7jgsbbsh5wlbxnv4v";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The morai_msgs package for ROS2 (foxy, galactic)";
    license = with lib.licenses; [ "TODO-CATKIN-PACKAGE-LICENSE" ];
  };
}
