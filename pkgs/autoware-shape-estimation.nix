# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-cmake-gtest, ament-lint-auto, autoware-cmake, autoware-cuda-utils, autoware-lint-common, autoware-perception-msgs, autoware-tensorrt-common, autoware-test-utils, autoware-universe-utils, cudnn-cmake-module, eigen, opencv, pcl, pcl-conversions, rclcpp, rclcpp-components, tensorrt-cmake-module, tf2, tf2-eigen, tf2-geometry-msgs, tier4-perception-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-shape-estimation";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_shape_estimation/";
  buildInputs = [ ament-cmake autoware-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto autoware-lint-common autoware-test-utils ];
  propagatedBuildInputs = [ autoware-cuda-utils autoware-perception-msgs autoware-tensorrt-common autoware-universe-utils cudnn-cmake-module eigen opencv opencv.cxxdev pcl pcl-conversions rclcpp rclcpp-components tensorrt-cmake-module tf2 tf2-eigen tf2-geometry-msgs tier4-perception-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-cmake cudnn-cmake-module tensorrt-cmake-module ];

  meta = {
    description = "This package implements a shape estimation algorithm as a ROS 2 node";
    license = with lib.licenses; [ asl20 ];
  };
}
