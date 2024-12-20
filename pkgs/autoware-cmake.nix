# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-lint-common, ros-environment }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-cmake";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware_cmake";
    rev = "890e31281d293b87933b1ad3c1d2846c88d77ffa";
    sha256 = "1rb54pgrx6hbxvzlm74dfp8dbjl4hsbbhkq9mf82md549m8jmc5a";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/autoware_cmake/";
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ ament-cmake-auto ament-lint-auto ros-environment ];
  nativeBuildInputs = [ ament-cmake-auto ament-lint-auto ];

  meta = {
    description = "CMake scripts for Autoware";
    license = with lib.licenses; [ asl20 ];
  };
}
