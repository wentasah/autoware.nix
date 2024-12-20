# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-kalman-filter, autoware-lint-common, autoware-localization-util, autoware-universe-utils, diagnostic-msgs, eigen, eigen3-cmake-module, fmt, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, ros-testing, std-srvs, tf2, tf2-ros, tier4-debug-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-ekf-localizer";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/localization/autoware_ekf_localizer/";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen eigen3-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ros-testing ];
  propagatedBuildInputs = [ autoware-kalman-filter autoware-localization-util autoware-universe-utils diagnostic-msgs fmt geometry-msgs nav-msgs rclcpp rclcpp-components std-srvs tf2 tf2-ros tier4-debug-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "The autoware_ekf_localizer package";
    license = with lib.licenses; [ asl20 ];
  };
}
