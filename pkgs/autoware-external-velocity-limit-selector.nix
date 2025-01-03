# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, generate-parameter-library, rclcpp, rclcpp-components, ros2cli, tier4-debug-msgs, tier4-planning-msgs, topic-tools }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-external-velocity-limit-selector";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/autoware_external_velocity_limit_selector/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ generate-parameter-library rclcpp rclcpp-components ros2cli tier4-debug-msgs tier4-planning-msgs topic-tools ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_external_velocity_limit_selector ROS 2 package";
    license = with lib.licenses; [ asl20 ];
  };
}
