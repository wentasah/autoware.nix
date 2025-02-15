# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, nebula-common, nebula-decoders, nebula-examples, nebula-hw-interfaces, nebula-ros, nebula-tests, pandar-msgs, velodyne-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-nebula-sensor-driver";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "nebula";
    rev = "d881d5b7ff3e124a466d15afc50341960e89683b";
    sha256 = "0hxn2f1jqvs3fqp38ww79w0l93kz40fpwn9y4q5ivpwkgbm4p8f4";
    sparseCheckout = ["nebula_sensor_driver/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/nebula_sensor_driver/";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nebula-common nebula-decoders nebula-examples nebula-hw-interfaces nebula-ros nebula-tests pandar-msgs velodyne-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package for nebula sensor drivers related packages";
    license = with lib.licenses; [ asl20 ];
  };
}
