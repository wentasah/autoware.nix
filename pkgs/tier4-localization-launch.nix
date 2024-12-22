# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, automatic-pose-initializer, autoware-ar-tag-based-localizer, autoware-cmake, autoware-ekf-localizer, autoware-geo-pose-projector, autoware-gyro-odometer, autoware-lidar-marker-localizer, autoware-lint-common, autoware-ndt-scan-matcher, autoware-pointcloud-preprocessor, autoware-pose-estimator-arbiter, autoware-pose-initializer, autoware-pose-instability-detector, eagleye-geo-pose-fusion, eagleye-gnss-converter, eagleye-rt, topic-tools, yabloc-common, yabloc-image-processing, yabloc-monitor, yabloc-particle-filter, yabloc-pose-initializer }:
buildRosPackage rec {
  pname = "ros-rolling-tier4-localization-launch";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/launch/tier4_localization_launch/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ automatic-pose-initializer autoware-ar-tag-based-localizer autoware-ekf-localizer autoware-geo-pose-projector autoware-gyro-odometer autoware-lidar-marker-localizer autoware-ndt-scan-matcher autoware-pointcloud-preprocessor autoware-pose-estimator-arbiter autoware-pose-initializer autoware-pose-instability-detector eagleye-geo-pose-fusion eagleye-gnss-converter eagleye-rt topic-tools yabloc-common yabloc-image-processing yabloc-monitor yabloc-particle-filter yabloc-pose-initializer ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The tier4_localization_launch package";
    license = with lib.licenses; [ asl20 ];
  };
}
