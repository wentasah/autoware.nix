# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-tier4-v2x-msgs";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "tier4_autoware_msgs";
    rev = "fbc4871a7756bab7a99ba5ee0bd009861f2c67f3";
    sha256 = "1nh6ncc4lp88wa3a35s5ww2v21x0wspm7q5aidipk7hlvdybq8zh";
    sparseCheckout = ["tier4_v2x_msgs/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/tier4_v2x_msgs/";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tier4_v2x_msgs package";
    license = with lib.licenses; [ asl20 ];
  };
}
