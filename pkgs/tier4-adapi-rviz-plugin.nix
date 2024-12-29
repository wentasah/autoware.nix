# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-adapi-specs, autoware-cmake, autoware-component-interface-utils, autoware-lint-common, autoware-vehicle-msgs, geometry-msgs, qt5, rclcpp, rviz-common, rviz-default-plugins, tier4-external-api-msgs, tier4-planning-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-tier4-adapi-rviz-plugin";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/common/tier4_adapi_rviz_plugin/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-specs autoware-component-interface-utils autoware-vehicle-msgs geometry-msgs qt5.qtbase rclcpp rviz-common rviz-default-plugins tier4-external-api-msgs tier4-planning-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware adapi rviz plugin package";
    license = with lib.licenses; [ asl20 ];
  };
}
