# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-lint-common, autoware-perception-msgs, autoware-planning-msgs, autoware-system-msgs, autoware-vehicle-msgs, geometry-msgs, rclcpp, rclcpp-components, std-srvs, tier4-api-utils, tier4-auto-msgs-converter, tier4-control-msgs, tier4-external-api-msgs, tier4-localization-msgs, tier4-perception-msgs, tier4-planning-msgs, tier4-system-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-iv-internal-api-adaptor";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "tier4_ad_api_adaptor";
    rev = "d409b665aa4d5de97e1ef21a6afc11ea263701b4";
    sha256 = "19l3ninxwa0sqlfdnvwbzsm446hvjky6xsjqv3jrka0kk68c05qz";
    sparseCheckout = ["autoware_iv_internal_api_adaptor/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/autoware_iv_internal_api_adaptor/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs autoware-perception-msgs autoware-planning-msgs autoware-system-msgs autoware-vehicle-msgs geometry-msgs rclcpp rclcpp-components std-srvs tier4-api-utils tier4-auto-msgs-converter tier4-control-msgs tier4-external-api-msgs tier4-localization-msgs tier4-perception-msgs tier4-planning-msgs tier4-system-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_iv_internal_api_adaptor package";
    license = with lib.licenses; [ asl20 ];
  };
}
