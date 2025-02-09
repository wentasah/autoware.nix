# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto }:
buildRosPackage rec {
  pname = "ros-rolling-vls-description";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "sensor_component_description";
    rev = "0e3e23a0d987825492bdbb7276fa1e007b484fdf";
    sha256 = "0mppg58y2r1whg3514wmjwhkxqli3zrfiiw04skqzj3hps1a18pv";
    sparseCheckout = ["vls_description/"];
    nonConeMode = true;
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
