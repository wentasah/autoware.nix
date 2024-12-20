# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-universe-utils, cv-bridge, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, std-msgs, visualization-msgs, yabloc-common }:
buildRosPackage rec {
  pname = "ros-rolling-yabloc-image-processing";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/localization/yabloc/yabloc_image_processing/";
  buildInputs = [ ament-cmake autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-universe-utils cv-bridge pcl-conversions rclcpp rclcpp-components sensor-msgs std-msgs visualization-msgs yabloc-common ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "YabLoc image processing package";
    license = with lib.licenses; [ asl20 ];
  };
}
