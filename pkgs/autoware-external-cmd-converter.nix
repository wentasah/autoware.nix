# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-control-msgs, autoware-lint-common, autoware-raw-vehicle-cmd-converter, autoware-test-utils, autoware-vehicle-msgs, diagnostic-updater, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, std-msgs, tier4-control-msgs, tier4-external-api-msgs, tier4-system-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-external-cmd-converter";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/vehicle/autoware_external_cmd_converter/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-control-msgs autoware-raw-vehicle-cmd-converter autoware-test-utils autoware-vehicle-msgs diagnostic-updater geometry-msgs nav-msgs rclcpp rclcpp-components std-msgs tier4-control-msgs tier4-external-api-msgs tier4-system-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_external_cmd_converter package";
    license = with lib.licenses; [ asl20 ];
  };
}
