# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-euclidean-cluster, autoware-lint-common, autoware-object-recognition-utils, autoware-shape-estimation, autoware-universe-utils, eigen, eigen3-cmake-module, rclcpp, rclcpp-components, tf2, tf2-geometry-msgs, tf2-ros, tier4-perception-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-detection-by-tracker";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0n69w33al63a3ha092blns751bzpav9mil254c0b40zfydiaq2sj";
    sparseCheckout = ["perception/autoware_detection_by_tracker/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_detection_by_tracker/";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-euclidean-cluster autoware-object-recognition-utils autoware-shape-estimation autoware-universe-utils eigen rclcpp rclcpp-components tf2 tf2-geometry-msgs tf2-ros tier4-perception-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The ROS 2 autoware_detection_by_tracker package";
    license = with lib.licenses; [ asl20 ];
  };
}
