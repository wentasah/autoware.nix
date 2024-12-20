# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, cv-bridge, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-image-transport-decompressor";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/sensing/autoware_image_transport_decompressor/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ cv-bridge rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The image_transport_decompressor package";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
