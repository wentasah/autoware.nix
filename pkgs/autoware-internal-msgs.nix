# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-internal-msgs";
  version = "1.2.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware_internal_msgs";
    rev = "13968e8f6b650073194057c3c792470eb37f8360";
    sha256 = "1wy9d6flf4p8rw8p95qhcg31xxa2ws7ssjsazwpqr30w3yz6nvxi";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/autoware_internal_msgs/";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Autoware internal messages package.";
    license = with lib.licenses; [ asl20 ];
  };
}
