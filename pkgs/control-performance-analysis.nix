# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-control-msgs, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-signal-processing, autoware-universe-utils, autoware-vehicle-info-utils, autoware-vehicle-msgs, boost, builtin-interfaces, geometry-msgs, global-parameter-loader, nav-msgs, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-ros, tier4-debug-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-control-performance-analysis";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/control/control_performance_analysis/";
  buildInputs = [ ament-cmake-auto autoware-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-control-msgs autoware-motion-utils autoware-planning-msgs autoware-signal-processing autoware-universe-utils autoware-vehicle-info-utils autoware-vehicle-msgs boost builtin-interfaces geometry-msgs global-parameter-loader nav-msgs rclcpp rclcpp-components rosidl-default-runtime sensor-msgs std-msgs tf2 tf2-eigen tf2-ros tier4-debug-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake rosidl-default-generators ];

  meta = {
    description = "Controller Performance Evaluation";
    license = with lib.licenses; [ asl20 ];
  };
}
