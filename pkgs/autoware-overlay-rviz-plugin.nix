# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-index-cpp, ament-lint-auto, autoware-lint-common, autoware-perception-msgs, autoware-vehicle-msgs, boost, rviz-common, rviz-ogre-vendor, rviz-rendering, tier4-planning-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-overlay-rviz-plugin";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1s8lhqs6nkfq3073wc9jqyrl6xygmi6n8g01yjgw0b3fyxjxdirr";
    sparseCheckout = ["common/autoware_overlay_rviz_plugin/autoware_overlay_rviz_plugin/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/common/autoware_overlay_rviz_plugin/autoware_overlay_rviz_plugin/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp autoware-perception-msgs autoware-vehicle-msgs boost rviz-common rviz-ogre-vendor rviz-rendering tier4-planning-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "RViz2 plugin for 2D overlays in the 3D view. Mainly a port of the JSK overlay plugin
        (https://github.com/jsk-ros-pkg/jsk_visualization).";
    license = with lib.licenses; [ bsd3 ];
  };
}
