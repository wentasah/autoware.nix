# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-adapi-version-msgs";
  version = "1.6.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware_adapi_msgs";
    rev = "e62ea6fdb9ee50e49c7642c77e85250cb15b8e80";
    sha256 = "07ni1cdsm9s31bx79mqmvlqds4iirzgzksxcz0mga66vkckh376r";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/autoware_adapi_version_msgs/";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The Autoware AD API version interfaces";
    license = with lib.licenses; [ asl20 ];
  };
}
