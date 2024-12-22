# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-common-msgs";
  version = "1.3.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware_msgs";
    rev = "bbafc6c4410222de45df2d73e66678f80b1e28d4";
    sha256 = "1b4vw63i63lsqkn633qg1r6w5inrjigakmmzbj1idi270y31rria";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/autoware_common_msgs/";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Autoware common messages package.";
    license = with lib.licenses; [ asl20 ];
  };
}
