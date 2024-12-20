# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-object-recognition-utils, autoware-perception-msgs, autoware-point-types, autoware-tensorrt-common, autoware-universe-utils, launch-ros, pcl-ros, rclcpp, rclcpp-components, tf2-eigen, tf2-geometry-msgs, tf2-sensor-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-lidar-transfusion";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_lidar_transfusion/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-object-recognition-utils autoware-perception-msgs autoware-point-types autoware-tensorrt-common autoware-universe-utils launch-ros pcl-ros rclcpp rclcpp-components tf2-eigen tf2-geometry-msgs tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The lidar_transfusion package";
    license = with lib.licenses; [ asl20 ];
  };
}
