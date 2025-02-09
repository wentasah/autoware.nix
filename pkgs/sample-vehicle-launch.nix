# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto }:
buildRosPackage rec {
  pname = "ros-rolling-sample-vehicle-launch";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "sample_vehicle_launch";
    rev = "627068935b12ec6d6121e6a1b885e31d564b04c5";
    sha256 = "1hcjgmj5qh5h68ppfhha2qcwbn04wrk8z4js4pq4w3sds9s5hihx";
    sparseCheckout = ["sample_vehicle_launch/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/sample_vehicle_launch/";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The sample_vehicle_launch package";
    license = with lib.licenses; [ "Apache-2.0-License" ];
  };
}
