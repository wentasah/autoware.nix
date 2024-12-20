# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, eigen, geodesy, geographic-info, geographic-msgs, geographiclib, rclcpp }:
buildRosPackage rec {
  pname = "ros-rolling-eagleye-coordinate";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "MapIV";
    repo = "eagleye";
    rev = "c1919448336e86a8dd9c94a337032c05fcf6c381";
    sha256 = "16rvymq847bcdy3gyzag1v5fmjplpnsrfqq7058m8mfx8rrmdai3";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/eagleye_core/coordinate/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen geodesy geographic-info geographic-msgs geographiclib rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The coordinate package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
