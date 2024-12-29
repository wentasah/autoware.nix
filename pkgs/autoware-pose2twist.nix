# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-lint-auto, autoware-cmake, autoware-lint-common, geometry-msgs, rclcpp, rclcpp-components, tf2-geometry-msgs, tier4-debug-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-pose2twist";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
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
