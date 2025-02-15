# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, qt5, rclcpp, rosbag2-interfaces, rviz-common }:
buildRosPackage rec {
  pname = "ros-rolling-bag-time-manager-rviz-plugin";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "13lp7pfwk60ddwa3j6gncacsz0hmsp71bnc59y7mlk8af2ghcnpc";
    sparseCheckout = ["common/bag_time_manager_rviz_plugin/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  patches = [
    ./0001-bag_time_manager_rviz_plugin-Fix-includes.patch
  ];
  sourceRoot = "${src.name}/common/bag_time_manager_rviz_plugin/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ qt5.qtbase rclcpp rosbag2-interfaces rviz-common ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "Rviz plugin to publish and control the ros bag";
    license = with lib.licenses; [ asl20 ];
  };
}
