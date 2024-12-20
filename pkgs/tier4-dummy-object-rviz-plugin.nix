# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-lint-auto, autoware-cmake, autoware-lint-common, boost, qt5, rviz-common, rviz-default-plugins, tf2-geometry-msgs, tf2-ros, tier4-simulation-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-tier4-dummy-object-rviz-plugin";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/simulator/tier4_dummy_object_rviz_plugin/";
  buildInputs = [ ament-cmake autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ boost qt5.qtbase rviz-common rviz-default-plugins tf2-geometry-msgs tf2-ros tier4-simulation-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "The tier4_dummy_object_rviz_plugin package";
    license = with lib.licenses; [ asl20 ];
  };
}
