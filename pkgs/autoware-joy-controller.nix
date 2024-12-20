# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-control-msgs, autoware-lint-common, autoware-universe-utils, autoware-vehicle-msgs, geometry-msgs, joy, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, std-srvs, tier4-api-utils, tier4-control-msgs, tier4-external-api-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-joy-controller";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/control/autoware_joy_controller/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-control-msgs autoware-universe-utils autoware-vehicle-msgs geometry-msgs joy nav-msgs rclcpp rclcpp-components sensor-msgs std-srvs tier4-api-utils tier4-control-msgs tier4-external-api-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_joy_controller package";
    license = with lib.licenses; [ asl20 ];
  };
}
