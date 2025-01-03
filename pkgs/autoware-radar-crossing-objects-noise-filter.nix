# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-perception-msgs, autoware-universe-utils, rclcpp, rclcpp-components, tf2, tf2-geometry-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-radar-crossing-objects-noise-filter";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_radar_crossing_objects_noise_filter/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-perception-msgs autoware-universe-utils rclcpp rclcpp-components tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "autoware_radar_crossing_objects_noise_filter";
    license = with lib.licenses; [ asl20 ];
  };
}
