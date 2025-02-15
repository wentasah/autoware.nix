# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-lint-common, rclcpp, rclcpp-components, tier4-system-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-component-interface-utils";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1s0gwg124qdclrlpfakwdigjj9wzk5a0v4m2nc04rwzh95hwpymi";
    sparseCheckout = ["common/autoware_component_interface_utils/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/common/autoware_component_interface_utils/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs rclcpp rclcpp-components tier4-system-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_component_interface_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}
