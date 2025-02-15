# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-planning-msgs, autoware-universe-utils, diagnostic-msgs, eigen, geometry-msgs, message-filters, nav-msgs, rclcpp, rclcpp-components, tf2, tf2-ros }:
buildRosPackage rec {
  pname = "ros-rolling-localization-evaluator";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "0cbjqnww8ymi19j8mdy5gckffh9hh3j6wlmjp8qglkzm6vlz7jrz";
    sparseCheckout = ["evaluator/localization_evaluator/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/evaluator/localization_evaluator/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-planning-msgs autoware-universe-utils diagnostic-msgs eigen geometry-msgs message-filters nav-msgs rclcpp rclcpp-components tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "localization evaluator ROS 2 node";
    license = with lib.licenses; [ asl20 ];
  };
}
