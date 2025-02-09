# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-index-cpp, ament-lint-auto, autoware-cmake, autoware-lint-common, diagnostic-updater, rclcpp, rclcpp-components, tf2-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-topic-state-monitor";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1mz70fisa42i00glvxk09r5nfaqg29pmrz79hnq8qh9a6m0v772c";
    sparseCheckout = ["system/topic_state_monitor/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/system/topic_state_monitor/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp diagnostic-updater rclcpp rclcpp-components tf2-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The topic_state_monitor package";
    license = with lib.licenses; [ asl20 ];
  };
}
