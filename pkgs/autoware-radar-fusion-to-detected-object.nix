# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-common, autoware-cmake, autoware-lint-common, autoware-perception-msgs, autoware-universe-utils, eigen, geometry-msgs, message-filters, rclcpp, rclcpp-components }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-radar-fusion-to-detected-object";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_radar_fusion_to_detected_object/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-common autoware-lint-common ];
  propagatedBuildInputs = [ autoware-perception-msgs autoware-universe-utils eigen geometry-msgs message-filters rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "autoware_radar_fusion_to_detected_object";
    license = with lib.licenses; [ asl20 ];
  };
}
