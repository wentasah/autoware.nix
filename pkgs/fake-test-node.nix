# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-index-python, ament-lint-auto, autoware-auto-common, autoware-cmake, autoware-lint-common, rclcpp, rclcpp-components, tf2, tf2-ros }:
buildRosPackage rec {
  pname = "ros-rolling-fake-test-node";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/common/fake_test_node/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-index-python ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ ament-cmake-ros autoware-auto-common rclcpp rclcpp-components tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "A fake node that we can use in the integration-like cpp tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
