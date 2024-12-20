# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-index-cpp, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-universe-utils, rclcpp }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-vehicle-info-utils";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/common/autoware_vehicle_info_utils/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-index-cpp ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-universe-utils rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_vehicle_info_utils package";
    license = with lib.licenses; [ asl20 ];
  };
}
