# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-gmock, ament-lint-auto, autoware-behavior-path-planner, autoware-behavior-path-planner-common, autoware-behavior-velocity-planner, autoware-cmake, autoware-geography-utils, autoware-interpolation, autoware-lanelet2-extension, autoware-lint-common, autoware-map-loader, autoware-map-msgs, autoware-map-projection-loader, autoware-mission-planner, autoware-motion-utils, autoware-osqp-interface, autoware-path-optimizer, autoware-path-smoother, autoware-perception-msgs, autoware-planning-msgs, autoware-route-handler, autoware-universe-utils, autoware-vehicle-info-utils, geometry-msgs, global-parameter-loader, python3Packages, rclcpp, rclcpp-components, ros-testing, rosidl-default-generators, rosidl-default-runtime, tier4-map-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-static-centerline-generator";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/autoware_static_centerline_generator/";
  buildInputs = [ ament-cmake-auto autoware-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto autoware-behavior-path-planner autoware-behavior-velocity-planner autoware-lint-common ros-testing ];
  propagatedBuildInputs = [ autoware-behavior-path-planner-common autoware-geography-utils autoware-interpolation autoware-lanelet2-extension autoware-map-loader autoware-map-msgs autoware-map-projection-loader autoware-mission-planner autoware-motion-utils autoware-osqp-interface autoware-path-optimizer autoware-path-smoother autoware-perception-msgs autoware-planning-msgs autoware-route-handler autoware-universe-utils autoware-vehicle-info-utils geometry-msgs global-parameter-loader python3Packages.flask-cors rclcpp rclcpp-components rosidl-default-runtime tier4-map-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_static_centerline_generator package";
    license = with lib.licenses; [ asl20 ];
  };
}
