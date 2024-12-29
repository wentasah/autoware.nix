# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-lint-common, autoware-perception-msgs, autoware-universe-utils, geometry-msgs, rclcpp, std-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-objects-of-interest-marker-interface";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/autoware_objects_of_interest_marker_interface/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-perception-msgs autoware-universe-utils geometry-msgs rclcpp std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The autoware_objects_of_interest_marker_interface package";
    license = with lib.licenses; [ asl20 ];
  };
}
