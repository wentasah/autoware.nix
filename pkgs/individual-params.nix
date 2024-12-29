# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-lint-common }:
buildRosPackage rec {
  pname = "ros-rolling-individual-params";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware_individual_params";
    rev = "70000825155182d9261ce0980076b0e2c6dc3f51";
    sha256 = "1l6c4rnswn0a0mszp1bwkzxabzlz19sfgbsw1ymr0r59vv4ksgyl";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/individual_params/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The individual_params package";
    license = with lib.licenses; [ asl20 ];
  };
}
