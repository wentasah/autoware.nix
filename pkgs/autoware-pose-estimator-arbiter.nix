# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-universe-utils, diagnostic-msgs, geometry-msgs, magic-enum, pcl-conversions, rclcpp-components, ros-testing, sensor-msgs, std-msgs, std-srvs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-pose-estimator-arbiter";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/localization/autoware_pose_estimator_arbiter/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ros-testing ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-lanelet2-extension autoware-map-msgs autoware-universe-utils diagnostic-msgs geometry-msgs magic-enum pcl-conversions rclcpp-components sensor-msgs std-msgs std-srvs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The arbiter of multiple pose estimators";
    license = with lib.licenses; [ asl20 ];
  };
}
