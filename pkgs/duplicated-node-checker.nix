# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-lint-auto, ament-lint-common, autoware-cmake, diagnostic-updater, rclcpp, rclcpp-components }:
buildRosPackage rec {
  pname = "ros-rolling-duplicated-node-checker";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/system/duplicated_node_checker/";
  buildInputs = [ ament-cmake autoware-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-updater rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "A package to find out nodes with common names";
    license = with lib.licenses; [ asl20 ];
  };
}
