# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-universe-utils, autoware-vehicle-info-utils, qt5, rclcpp, rviz-common, rviz-default-plugins, rviz-rendering, tf2-geometry-msgs, tf2-ros, tier4-planning-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-tier4-planning-rviz-plugin";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/common/tier4_planning_rviz_plugin/";
  buildInputs = [ ament-cmake autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-motion-utils autoware-planning-msgs autoware-universe-utils autoware-vehicle-info-utils qt5.qtbase rclcpp rviz-common rviz-default-plugins rviz-rendering tf2-geometry-msgs tf2-ros tier4-planning-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "The tier4_planning_rviz_plugin package";
    license = with lib.licenses; [ asl20 ];
  };
}
