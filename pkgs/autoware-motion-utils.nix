# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-interpolation, autoware-lint-common, autoware-planning-msgs, autoware-universe-utils, autoware-vehicle-msgs, boost, builtin-interfaces, geometry-msgs, rclcpp, tf2, tf2-geometry-msgs, tier4-planning-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-motion-utils";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/common/autoware_motion_utils/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-interpolation autoware-planning-msgs autoware-universe-utils autoware-vehicle-msgs boost builtin-interfaces geometry-msgs rclcpp tf2 tf2-geometry-msgs tier4-planning-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_motion_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}
