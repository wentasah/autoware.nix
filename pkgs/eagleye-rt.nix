# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, diagnostic-updater, eagleye-coordinate, eagleye-msgs, eagleye-navigation, geodesy, geographic-msgs, geometry-msgs, nmea-msgs, rclcpp, rtklib-msgs, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, ublox-msgs, yaml-cpp-vendor }:
buildRosPackage rec {
  pname = "ros-rolling-eagleye-rt";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "MapIV";
    repo = "eagleye";
    rev = "c1919448336e86a8dd9c94a337032c05fcf6c381";
    sha256 = "16rvymq847bcdy3gyzag1v5fmjplpnsrfqq7058m8mfx8rrmdai3";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/eagleye_rt/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-updater eagleye-coordinate eagleye-msgs eagleye-navigation geodesy geographic-msgs geometry-msgs nmea-msgs rclcpp rtklib-msgs sensor-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros tf2-sensor-msgs ublox-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The eagleye_rt package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
