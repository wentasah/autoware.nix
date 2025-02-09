# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-lint-auto, autoware-cmake, autoware-lint-common, geometry-msgs, rclcpp, rclcpp-components, tf2-geometry-msgs, tier4-debug-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-pose2twist";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0b6ay76cl91wzrav3zdx2bnvjw610zigd1wacx163f0dc5ld4jgp";
    sparseCheckout = ["localization/autoware_pose2twist/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/localization/autoware_pose2twist/";
  buildInputs = [ ament-cmake autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rclcpp-components tf2-geometry-msgs tier4-debug-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "The autoware_pose2twist package";
    license = with lib.licenses; [ asl20 ];
  };
}
