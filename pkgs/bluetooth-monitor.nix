# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, bluez, boost, diagnostic-msgs, diagnostic-updater, fmt, rclcpp, rclcpp-components }:
buildRosPackage rec {
  pname = "ros-rolling-bluetooth-monitor";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1jm6x3whsg661kfgxy4m285wc3h9s6rmc0an1x1j2vcvxskvmqfn";
    sparseCheckout = ["system/bluetooth_monitor/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/system/bluetooth_monitor/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ bluez boost diagnostic-msgs diagnostic-updater fmt rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "Bluetooth alive monitoring";
    license = with lib.licenses; [ asl20 ];
  };
}
