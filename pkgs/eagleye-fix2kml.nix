# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, eagleye-msgs, rclcpp, rclpy, std-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-eagleye-fix2kml";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "MapIV";
    repo = "eagleye";
    rev = "e9ca8e37efcac1f1bad287e85d134f4655bab9e2";
    sha256 = "0hfl0imfmafgsalya24i6kb5qlic47z69sr21h3g1sclyjz6qjrb";
    sparseCheckout = ["eagleye_util/fix2kml/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/eagleye_util/fix2kml/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eagleye-msgs rclcpp rclpy std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The eagleye_fix2kml package";
    license = with lib.licenses; [ "BSD3" ];
  };
}
