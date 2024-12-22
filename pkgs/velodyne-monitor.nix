# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, cryptopp, diagnostic-msgs, diagnostic-updater, fmt, libcpprest-dev, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-velodyne-monitor";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/system/velodyne_monitor/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ cryptopp diagnostic-msgs diagnostic-updater fmt libcpprest-dev rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The velodyne_monitor package";
    license = with lib.licenses; [ asl20 ];
  };
}
