# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-lint-common, autoware-universe-utils, autoware-vehicle-msgs, nav-msgs, rclcpp, rclcpp-components, tier4-system-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-mrm-handler";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "15gp5r6zf04c5m6nanmvknvbks7js1byzs0679vggz2s1vf90xfa";
    sparseCheckout = ["system/mrm_handler/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/system/mrm_handler/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-universe-utils autoware-vehicle-msgs nav-msgs rclcpp rclcpp-components tier4-system-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The mrm_handler ROS 2 package";
    license = with lib.licenses; [ asl20 ];
  };
}
