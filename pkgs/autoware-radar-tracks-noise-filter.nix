# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, geometry-msgs, radar-msgs, rclcpp, rclcpp-components }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-radar-tracks-noise-filter";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0szz1gx2n15zlwa5x4v2w1wmiwzh3bg6ddf3r9fldbsd0zfs41xd";
    sparseCheckout = ["sensing/autoware_radar_tracks_noise_filter/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/sensing/autoware_radar_tracks_noise_filter/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ geometry-msgs radar-msgs rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "autoware_radar_tracks_noise_filter";
    license = with lib.licenses; [ asl20 ];
  };
}
