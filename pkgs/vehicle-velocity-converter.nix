# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-vehicle-msgs, geometry-msgs, rclcpp, rclcpp-components }:
buildRosPackage rec {
  pname = "ros-rolling-vehicle-velocity-converter";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1fjiwx178pkxa9ng136fqfqvbr2am310wp8wsfg67wp23gpyj930";
    sparseCheckout = ["sensing/vehicle_velocity_converter/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/sensing/vehicle_velocity_converter/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-vehicle-msgs geometry-msgs rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The vehicle_velocity_converter package";
    license = with lib.licenses; [ asl20 ];
  };
}
