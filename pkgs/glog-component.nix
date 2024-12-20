# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-cmake-auto, autoware-cmake, glog, rclcpp, rclcpp-components }:
buildRosPackage rec {
  pname = "ros-rolling-glog-component";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/common/glog_component/";
  buildInputs = [ ament-cmake ament-cmake-auto autoware-cmake ];
  propagatedBuildInputs = [ glog rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The glog_component package";
    license = with lib.licenses; [ asl20 ];
  };
}
