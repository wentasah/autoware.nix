# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, laser-geometry, launch, launch-ros, message-filters, pcl, pcl-conversions, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-pointcloud-to-laserscan";
  version = "2.0.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "pointcloud_to_laserscan";
    rev = "d969ec699f84fad827fbadfa3001c9c657482fbe";
    sha256 = "05nvm1g8q2w48af0pssrvzhadz0cimknbcfhrya82wdvd9xhyk0z";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ laser-geometry launch launch-ros message-filters pcl pcl-conversions rclcpp rclcpp-components sensor-msgs tf2 tf2-ros tf2-sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Converts a 3D Point Cloud into a 2D laser scan. This is useful for making devices like the Kinect appear like a laser scanner for 2D-based algorithms (e.g. laser-based SLAM).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
