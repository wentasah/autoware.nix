# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-motion-utils, autoware-raw-vehicle-cmd-converter, autoware-universe-utils, autoware-vehicle-msgs, diagnostic-updater, geometry-msgs, python3Packages, rclcpp, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, tier4-debug-msgs, tier4-external-api-msgs, tier4-vehicle-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-accel-brake-map-calibrator";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/vehicle/autoware_accel_brake_map_calibrator/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-motion-utils autoware-raw-vehicle-cmd-converter autoware-universe-utils autoware-vehicle-msgs diagnostic-updater geometry-msgs python3Packages.matplotlib python3Packages.pandas python3Packages.scipy rclcpp std-msgs std-srvs tf2-geometry-msgs tf2-ros tier4-debug-msgs tier4-external-api-msgs tier4-vehicle-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The accel_brake_map_calibrator";
    license = with lib.licenses; [ asl20 ];
  };
}
