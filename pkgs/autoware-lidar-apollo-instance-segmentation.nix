# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-lint-auto, ament-lint-common, autoware-cuda-utils, autoware-perception-msgs, autoware-tensorrt-common, autoware-universe-utils, pcl, pcl-conversions, rclcpp, rclcpp-components, tf2-eigen, tier4-debug-msgs, tier4-perception-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-lidar-apollo-instance-segmentation";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_lidar_apollo_instance_segmentation/";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-cuda-utils autoware-perception-msgs autoware-tensorrt-common autoware-universe-utils pcl pcl-conversions rclcpp rclcpp-components tf2-eigen tier4-debug-msgs tier4-perception-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "autoware_lidar_apollo_instance_segmentation";
    license = with lib.licenses; [ asl20 ];
  };
}
