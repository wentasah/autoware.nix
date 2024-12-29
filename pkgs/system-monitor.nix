# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-universe-utils, boost, chrony, diagnostic-msgs, diagnostic-updater, fmt, libnl, rclcpp, rclcpp-components, std-msgs, sysstat, tier4-external-api-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-system-monitor";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  patches = [
    ./0001-system_monitor-Add-missing-included-fix-compile-erro.patch
  ];
  sourceRoot = "${src.name}/system/system_monitor/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-universe-utils boost chrony diagnostic-msgs diagnostic-updater fmt libnl rclcpp rclcpp-components std-msgs sysstat tier4-external-api-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The system_monitor package";
    license = with lib.licenses; [ asl20 ];
  };
}
