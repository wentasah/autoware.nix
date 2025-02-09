# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-perception-msgs, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-internal-perception-msgs";
  version = "1.3.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware_internal_msgs";
    rev = "36a9d2e24e28a3826ff40fad657e19836b4a418e";
    sha256 = "155iqmn4d88a40i108s9y3iz2b7swz3s6lf09hsxbr39fn4fp0h9";
    sparseCheckout = ["autoware_internal_perception_msgs/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/autoware_internal_perception_msgs/";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-perception-msgs builtin-interfaces rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Autoware internal perception messages package.";
    license = with lib.licenses; [ asl20 ];
  };
}
