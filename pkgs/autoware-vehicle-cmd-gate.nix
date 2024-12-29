# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-cmake-ros, ament-index-cpp, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-component-interface-specs, autoware-component-interface-utils, autoware-control-msgs, autoware-lint-common, autoware-motion-utils, autoware-universe-utils, autoware-vehicle-info-utils, autoware-vehicle-msgs, diagnostic-updater, geometry-msgs, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, std-srvs, tier4-api-utils, tier4-control-msgs, tier4-debug-msgs, tier4-external-api-msgs, tier4-system-msgs, tier4-vehicle-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-vehicle-cmd-gate";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/control/autoware_vehicle_cmd_gate/";
  buildInputs = [ ament-cmake autoware-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-ros ament-index-cpp ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-component-interface-specs autoware-component-interface-utils autoware-control-msgs autoware-motion-utils autoware-universe-utils autoware-vehicle-info-utils autoware-vehicle-msgs diagnostic-updater geometry-msgs rclcpp rclcpp-components rosidl-default-runtime std-srvs tier4-api-utils tier4-control-msgs tier4-debug-msgs tier4-external-api-msgs tier4-system-msgs tier4-vehicle-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "The vehicle_cmd_gate package";
    license = with lib.licenses; [ asl20 ];
  };
}
