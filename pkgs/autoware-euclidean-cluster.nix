# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-perception-msgs, autoware-point-types, autoware-universe-utils, geometry-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, tier4-perception-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-euclidean-cluster";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "1hzp14qzf6m656ih6g8hlsn5fh9jmslv22wf5g1dc5wwdnm99b1p";
    sparseCheckout = ["perception/autoware_euclidean_cluster/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_euclidean_cluster/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-perception-msgs autoware-point-types autoware-universe-utils geometry-msgs pcl pcl-conversions rclcpp rclcpp-components sensor-msgs tier4-perception-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_euclidean_cluster package";
    license = with lib.licenses; [ asl20 ];
  };
}
