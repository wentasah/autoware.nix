# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, pybind11-vendor, python3 }:
buildRosPackage rec {
  pname = "ros-rolling-learning-based-vehicle-model";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0nvdp20r7j3ql049fbvzn2r2my72q0mrqr03v99vix48ikc6cnrc";
    sparseCheckout = ["simulator/learning_based_vehicle_model/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/simulator/learning_based_vehicle_model/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ pybind11-vendor python3 ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "learning_based_vehicle_model for simple_planning_simulator";
    license = with lib.licenses; [ asl20 ];
  };
}
