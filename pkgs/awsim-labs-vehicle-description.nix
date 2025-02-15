# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, xacro }:
buildRosPackage rec {
  pname = "ros-rolling-awsim-labs-vehicle-description";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "awsim_labs_vehicle_launch";
    rev = "59cfd490b2250e3341ba2f4c8ee6f6703c73a3da";
    sha256 = "1k0ajwv9claz8wbfq02p1cgybp09vsqzgh50vr49kaphk6fz29bz";
    sparseCheckout = ["awsim_labs_vehicle_description/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/awsim_labs_vehicle_description/";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The awsim_labs_vehicle_description package";
    license = with lib.licenses; [ "Apache-2.0-License" ];
  };
}
