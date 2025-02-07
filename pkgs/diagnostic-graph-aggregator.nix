# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, autoware-cmake, autoware-lint-common, diagnostic-msgs, rclcpp, rclcpp-components, tier4-system-msgs, yaml-cpp-vendor }:
buildRosPackage rec {
  pname = "ros-rolling-diagnostic-graph-aggregator";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  patches = [
    ./0001-chore-diagnostic_graph_aggregator-Add-missing-depend.patch
  ];
  sourceRoot = "${src.name}/system/diagnostic_graph_aggregator/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp diagnostic-msgs rclcpp rclcpp-components tier4-system-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The diagnostic_graph_aggregator package";
    license = with lib.licenses; [ asl20 ];
  };
}
