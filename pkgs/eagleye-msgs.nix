# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, rosidl-default-generators, rosidl-default-runtime, rtklib-msgs, sensor-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-eagleye-msgs";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "MapIV";
    repo = "eagleye";
    rev = "c1919448336e86a8dd9c94a337032c05fcf6c381";
    sha256 = "16rvymq847bcdy3gyzag1v5fmjplpnsrfqq7058m8mfx8rrmdai3";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/eagleye_msgs/";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rosidl-default-runtime rtklib-msgs sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The eagleye_msgs package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
