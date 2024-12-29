# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, common-interfaces, rclcpp, rtklib-msgs, sensor-msgs, std-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-rtklib-bridge";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "MapIV";
    repo = "rtklib_ros_bridge";
    rev = "ef094407bba4f475a8032972e0c60cbb939b51b8";
    sha256 = "1rmc13xgvc4f6qgccpgwhhf7r0zlr14hbgdv1kzi566fsn3fjg87";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/rtklib_bridge/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ common-interfaces rclcpp rtklib-msgs sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The rtklib_bridge package";
    license = with lib.licenses; [ "TODO-License-declaration" ];
  };
}
