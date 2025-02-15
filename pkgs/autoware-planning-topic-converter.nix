# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-universe-utils, rclcpp, rclcpp-components }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-planning-topic-converter";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1wvsiisdf98r83qq2v0l3bji0h8smc2rj1qqszafviml0apqhvk3";
    sparseCheckout = ["planning/autoware_planning_topic_converter/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/autoware_planning_topic_converter/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-motion-utils autoware-planning-msgs autoware-universe-utils rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The autoware_planning_topic_converter package";
    license = with lib.licenses; [ asl20 ];
  };
}
