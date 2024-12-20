# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto }:
buildRosPackage rec {
  pname = "ros-rolling-vls-description";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "sensor_component_description";
    rev = "079820003a1c969df7fa02ca092e532c66ab809e";
    sha256 = "14wg7iw10sgd53cwicwaaqgmxln5byrknb3qhh6q3hiz1qchc4f4";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/vls_description/";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The vls_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
