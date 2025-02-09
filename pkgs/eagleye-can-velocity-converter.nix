# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, can-msgs, geometry-msgs, rclcpp }:
buildRosPackage rec {
  pname = "ros-rolling-eagleye-can-velocity-converter";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "MapIV";
    repo = "eagleye";
    rev = "e9ca8e37efcac1f1bad287e85d134f4655bab9e2";
    sha256 = "0fcnd264q60mi4c6v24ff6lzg1149x13i35k5pnkagxr8p8pd3ij";
    sparseCheckout = ["eagleye_util/can_velocity_converter/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/eagleye_util/can_velocity_converter/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs geometry-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The can_velocity_converter package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
