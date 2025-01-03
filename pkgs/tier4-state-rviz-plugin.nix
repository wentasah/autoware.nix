# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-index-cpp, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-lint-common, autoware-vehicle-msgs, qt5, rclcpp, rviz-common, tier4-control-msgs, tier4-external-api-msgs, tier4-planning-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-tier4-state-rviz-plugin";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/common/tier4_state_rviz_plugin/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp autoware-adapi-v1-msgs autoware-vehicle-msgs qt5.qtbase rclcpp rviz-common tier4-control-msgs tier4-external-api-msgs tier4-planning-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware state rviz plugin package";
    license = with lib.licenses; [ asl20 ];
  };
}
