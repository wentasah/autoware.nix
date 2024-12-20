# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, ament-lint-common, geographiclib }:
buildRosPackage rec {
  pname = "ros-rolling-llh-converter";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "MapIV";
    repo = "llh_converter";
    rev = "07ad112b4f6b83eccd3a5f777bbe40ff01c67382";
    sha256 = "14hsh4axxhjxxsvv1n9nyhsw82n9d8dznp4kw5rz9va9r8dxasxk";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geographiclib ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The height converter package between ellipsoid and orthometric";
    license = with lib.licenses; [ bsd3 ];
  };
}
