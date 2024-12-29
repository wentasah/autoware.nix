# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, eagleye-coordinate, eagleye-navigation, nmea-msgs, rclcpp, rtklib-msgs, sensor-msgs, septentrio-gnss-driver, tf2-geometry-msgs, tf2-ros, ublox-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-eagleye-gnss-converter";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "MapIV";
    repo = "eagleye";
    rev = "c1919448336e86a8dd9c94a337032c05fcf6c381";
    sha256 = "16rvymq847bcdy3gyzag1v5fmjplpnsrfqq7058m8mfx8rrmdai3";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/eagleye_util/gnss_converter/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eagleye-coordinate eagleye-navigation nmea-msgs rclcpp rtklib-msgs sensor-msgs septentrio-gnss-driver tf2-geometry-msgs tf2-ros ublox-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "gnss_converter package";
    license = with lib.licenses; [ "BSD3" ];
  };
}
