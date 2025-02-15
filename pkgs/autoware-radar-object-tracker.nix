# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-kalman-filter, autoware-lanelet2-extension, autoware-lint-common, autoware-object-recognition-utils, autoware-perception-msgs, autoware-universe-utils, eigen, eigen3-cmake-module, glog, gtest, mussp, nlohmann_json, rclcpp, rclcpp-components, tf2, tf2-ros, unique-identifier-msgs, yaml-cpp }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-radar-object-tracker";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "061wrrcgp28wyj026yqcaiqmpxksjzxlxffzxbs5s4s23wkx8nxr";
    sparseCheckout = ["perception/autoware_radar_object_tracker/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_radar_object_tracker/";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-lint-auto autoware-lint-common gtest ];
  propagatedBuildInputs = [ autoware-kalman-filter autoware-lanelet2-extension autoware-object-recognition-utils autoware-perception-msgs autoware-universe-utils eigen glog mussp nlohmann_json rclcpp rclcpp-components tf2 tf2-ros unique-identifier-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "Do tracking radar object";
    license = with lib.licenses; [ asl20 ];
  };
}
