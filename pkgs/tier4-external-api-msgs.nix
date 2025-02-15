# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, diagnostic-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage rec {
  pname = "ros-rolling-tier4-external-api-msgs";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "tier4_autoware_msgs";
    rev = "3f1328c0e8d91fc81f4f008affe3d1facb4154e4";
    sha256 = "1lip5j7mgq6hy00s1cgywdidgyym0xv9h3wyvv7wqrxykh79lz5i";
    sparseCheckout = ["tier4_external_api_msgs/"];
    nonConeMode = true;
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
