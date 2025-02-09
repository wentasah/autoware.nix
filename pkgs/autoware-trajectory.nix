# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-planning-msgs, geometry-msgs, lanelet2-core, rclcpp, tf2, tier4-planning-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-trajectory";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0sf2g5mgl7h2xjhn486v8w4faj75gmaihf539dvddji9kixz6jcz";
    sparseCheckout = ["common/autoware_trajectory/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/common/autoware_trajectory/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-planning-msgs geometry-msgs lanelet2-core rclcpp tf2 tier4-planning-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_trajectory package";
    license = with lib.licenses; [ asl20 ];
  };
}
