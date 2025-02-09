# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-core, ament-cmake-lint-cmake, ament-copyright, ament-flake8, ament-pep257, autoware-cmake, ros-testing }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-testing";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "15c0a6d3vb899azi0a15nsv976f6y75pzyspyfzb0phrff9qnzvv";
    sparseCheckout = ["common/autoware_testing/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/common/autoware_testing/";
  buildInputs = [ ament-cmake-auto ament-cmake-lint-cmake autoware-cmake ];
  checkInputs = [ ament-cmake-core ament-copyright ament-flake8 ament-pep257 ros-testing ];
  propagatedBuildInputs = [ ros-testing ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-lint-cmake autoware-cmake ros-testing ];

  meta = {
    description = "Tools for handling standard tests based on ros_testing";
    license = with lib.licenses; [ asl20 ];
  };
}
