# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto }:
buildRosPackage rec {
  pname = "ros-rolling-mussp";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "muSSP";
    rev = "c79e98fd5e658f4f90c06d93472faa977bc873b9";
    sha256 = "17psmvmcqw40ilxl52fdn7fk4wyq603liligcwrqhk1kanv26s4x";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The mussp package";
    license = with lib.licenses; [ asl20 ];
  };
}
