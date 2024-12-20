# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-pointcloud-preprocessor, autoware-universe-utils, eigen3-cmake-module, grid-map-costmap-2d, grid-map-msgs, grid-map-ros, laser-geometry, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, message-filters, nav-msgs, nav2-costmap-2d, pcl-ros, pointcloud-to-laserscan, rclcpp, rclcpp-components, sensor-msgs, tf2-eigen, tf2-ros, tf2-sensor-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-probabilistic-occupancy-grid-map";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/perception/autoware_probabilistic_occupancy_grid_map/";
  buildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto autoware-lint-common autoware-pointcloud-preprocessor launch launch-ros launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ autoware-pointcloud-preprocessor autoware-universe-utils grid-map-costmap-2d grid-map-msgs grid-map-ros laser-geometry message-filters nav-msgs nav2-costmap-2d pcl-ros pointcloud-to-laserscan rclcpp rclcpp-components sensor-msgs tf2-eigen tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake eigen3-cmake-module ];

  meta = {
    description = "generate probabilistic occupancy grid map";
    license = with lib.licenses; [ asl20 ];
  };
}
