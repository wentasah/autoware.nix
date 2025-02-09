# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-gtest, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-universe-utils, eigen3-cmake-module, grid-map-core, grid-map-cv, opencv }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-grid-map-utils";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1hhpdjvyqndbbfayflh3ynwj3cfna29b2dcgf7411rqsms2k5b9r";
    sparseCheckout = ["common/autoware_grid_map_utils/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/common/autoware_grid_map_utils/";
  buildInputs = [ autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-universe-utils grid-map-core grid-map-cv opencv opencv.cxxdev ];
  nativeBuildInputs = [ autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "Utilities for the grid_map library";
    license = with lib.licenses; [ asl20 ];
  };
}
