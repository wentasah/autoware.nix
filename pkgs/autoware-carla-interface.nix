# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-lint-auto, ament-lint-common, autoware-perception-msgs, autoware-vehicle-msgs, geometry-msgs, rclpy, sensor-msgs, sensor-msgs-py, std-msgs, tf2, tf2-ros, tier4-vehicle-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-carla-interface";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_python";
  sourceRoot = "${src.name}/simulator/autoware_carla_interface/";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-perception-msgs autoware-vehicle-msgs geometry-msgs rclpy sensor-msgs sensor-msgs-py std-msgs tf2 tf2-ros tier4-vehicle-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The carla autoware bridge package";
    license = with lib.licenses; [ asl20 ];
  };
}
