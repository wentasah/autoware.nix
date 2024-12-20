# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-index-cpp, aruco, autoware-cmake, autoware-landmark-manager, autoware-localization-util, cv-bridge, diagnostic-msgs, rclcpp, rclcpp-components, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-ar-tag-based-localizer";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/localization/autoware_landmark_based_localizer/autoware_ar_tag_based_localizer/";
  buildInputs = [ ament-cmake autoware-cmake ];
  checkInputs = [ ament-index-cpp ];
  propagatedBuildInputs = [ aruco autoware-landmark-manager autoware-localization-util cv-bridge diagnostic-msgs rclcpp rclcpp-components tf2-eigen tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "The autoware_ar_tag_based_localizer package";
    license = with lib.licenses; [ asl20 ];
  };
}
