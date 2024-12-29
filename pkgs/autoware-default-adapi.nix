# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-adapi-specs, autoware-adapi-v1-msgs, autoware-adapi-version-msgs, autoware-cmake, autoware-component-interface-specs, autoware-component-interface-utils, autoware-geography-utils, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-system-msgs, autoware-vehicle-info-utils, autoware-vehicle-msgs, diagnostic-graph-utils, geographic-msgs, launch-testing, launch-testing-ament-cmake, nav-msgs, python3Packages, rclcpp, rclcpp-components, shape-msgs, std-srvs, tier4-api-msgs, tier4-control-msgs, tier4-system-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-default-adapi";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/system/autoware_default_adapi/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ autoware-adapi-specs autoware-adapi-v1-msgs autoware-adapi-version-msgs autoware-component-interface-specs autoware-component-interface-utils autoware-geography-utils autoware-motion-utils autoware-planning-msgs autoware-system-msgs autoware-vehicle-info-utils autoware-vehicle-msgs diagnostic-graph-utils geographic-msgs nav-msgs python3Packages.flask rclcpp rclcpp-components shape-msgs std-srvs tier4-api-msgs tier4-control-msgs tier4-system-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_default_adapi package";
    license = with lib.licenses; [ asl20 ];
  };
}
