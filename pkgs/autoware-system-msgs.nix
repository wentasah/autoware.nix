# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, diagnostic-msgs, geometry-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, unique-identifier-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-system-msgs";
  version = "1.3.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware_msgs";
    rev = "bbafc6c4410222de45df2d73e66678f80b1e28d4";
    sha256 = "13hrpfdf692j620wxyrl6ws9vyhqyk1aa0i8m23la8nhgm2rld89";
    sparseCheckout = ["autoware_system_msgs/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/autoware_system_msgs/";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces diagnostic-msgs geometry-msgs nav-msgs rosidl-default-runtime std-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Autoware system messages package.";
    license = with lib.licenses; [ asl20 ];
  };
}
