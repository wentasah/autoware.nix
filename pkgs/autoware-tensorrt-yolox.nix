# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-cuda-utils, autoware-image-transport-decompressor, autoware-lint-common, autoware-object-recognition-utils, autoware-perception-msgs, autoware-tensorrt-common, cudnn-cmake-module, cv-bridge, image-transport, opencv, perception-utils, rclcpp, rclcpp-components, sensor-msgs, tensorrt-cmake-module, tier4-perception-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-tensorrt-yolox";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0glrnfb6qcccn009zwpkya5qj7gxd4b24bzmn74nx7ncrg3rsjz5";
    sparseCheckout = ["perception/autoware_tensorrt_yolox/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_tensorrt_yolox/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-cuda-utils autoware-image-transport-decompressor autoware-object-recognition-utils autoware-perception-msgs autoware-tensorrt-common cudnn-cmake-module cv-bridge image-transport opencv opencv.cxxdev perception-utils rclcpp rclcpp-components sensor-msgs tensorrt-cmake-module tier4-perception-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake cudnn-cmake-module tensorrt-cmake-module ];

  meta = {
    description = "tensorrt library implementation for yolox";
    license = with lib.licenses; [ asl20 ];
  };
}
