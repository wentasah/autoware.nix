# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-lint-auto, ament-lint-common, autoware-cmake, autoware-detected-object-validation, autoware-lanelet2-extension, autoware-perception-msgs, autoware-point-types, autoware-universe-utils, message-filters, nav-msgs, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-eigen, tf2-ros, tier4-perception-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-raindrop-cluster-filter";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0akrss6y0i71hgyxv3jgmwnf9d5k1agmpc7pm2a76d7czyv7ck23";
    sparseCheckout = ["perception/autoware_raindrop_cluster_filter/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_raindrop_cluster_filter/";
  buildInputs = [ ament-cmake autoware-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-detected-object-validation autoware-lanelet2-extension autoware-perception-msgs autoware-point-types autoware-universe-utils message-filters nav-msgs pcl-conversions pcl-ros rclcpp rclcpp-components sensor-msgs tf2 tf2-eigen tf2-ros tier4-perception-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "The ROS 2 filter cluster package";
    license = with lib.licenses; [ asl20 ];
  };
}
