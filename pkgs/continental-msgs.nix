# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-continental-msgs";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "nebula";
    rev = "4f54c3bd5443df1210e3ddfae2bb1166c7056824";
    sha256 = "1s2v0rr6ava63vqs9d0d85ymkxqx126cbx4mr3p62rqxnvn9hg2v";
    sparseCheckout = ["nebula_messages/continental_msgs/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/nebula_messages/continental_msgs/";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Messages for Continental sensors";
    license = with lib.licenses; [ asl20 ];
  };
}
