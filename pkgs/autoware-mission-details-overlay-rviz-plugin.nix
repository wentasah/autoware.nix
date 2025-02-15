# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-internal-msgs, autoware-lint-common, boost, rviz-common, rviz-ogre-vendor, rviz-rendering }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-mission-details-overlay-rviz-plugin";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1xw60hjn9r7l45glwzgfzrxsmkslxjdcakiijcxnngpmky3kbaq7";
    sparseCheckout = ["common/autoware_overlay_rviz_plugin/autoware_mission_details_overlay_rviz_plugin/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/common/autoware_overlay_rviz_plugin/autoware_mission_details_overlay_rviz_plugin/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-msgs boost rviz-common rviz-ogre-vendor rviz-rendering ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "RViz2 plugin for 2D overlays for mission details in the 3D view. Mainly a port of the JSK overlay plugin
        (https://github.com/jsk-ros-pkg/jsk_visualization).";
    license = with lib.licenses; [ bsd3 ];
  };
}
