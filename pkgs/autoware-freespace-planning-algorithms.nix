# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-universe-utils, autoware-vehicle-info-utils, geometry-msgs, nav-msgs, nlohmann_json, pybind11-vendor, python-cmake-module, rosbag2-cpp, rosbag2-storage, rosbag2-storage-mcap, std-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-freespace-planning-algorithms";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/planning/autoware_freespace_planning_algorithms/";
  buildInputs = [ ament-cmake-auto autoware-cmake python-cmake-module ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-universe-utils autoware-vehicle-info-utils geometry-msgs nav-msgs nlohmann_json pybind11-vendor rosbag2-cpp rosbag2-storage rosbag2-storage-mcap std-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake python-cmake-module ];

  meta = {
    description = "The autoware_freespace_planning_algorithms package";
    license = with lib.licenses; [ asl20 ];
  };
}
