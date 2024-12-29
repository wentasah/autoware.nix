# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-pose2twist, autoware-universe-utils, autoware-vehicle-info-utils, autoware-vehicle-msgs, diagnostic-updater, geometry-msgs, global-parameter-loader, rclcpp, rclcpp-components, std-msgs, tier4-debug-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-steer-offset-estimator";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/vehicle/autoware_steer_offset_estimator/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-pose2twist autoware-universe-utils autoware-vehicle-info-utils autoware-vehicle-msgs diagnostic-updater geometry-msgs global-parameter-loader rclcpp rclcpp-components std-msgs tier4-debug-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The steer_offset_estimator";
    license = with lib.licenses; [ asl20 ];
  };
}
