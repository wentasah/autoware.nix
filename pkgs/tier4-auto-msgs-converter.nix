# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-perception-msgs, autoware-planning-msgs, autoware-system-msgs, autoware-vehicle-msgs, tier4-perception-msgs, tier4-planning-msgs, tier4-system-msgs, tier4-vehicle-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-tier4-auto-msgs-converter";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "tier4";
    repo = "tier4_autoware_msgs";
    rev = "7991e7df074a5338d912f56637551937159f70cf";
    sha256 = "1vjf7davzq0s4i5drkqgsnlnwa3kkw2n0ikwm2maqhs35x69n0ia";
    sparseCheckout = ["tier4_auto_msgs_converter/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/tier4_auto_msgs_converter/";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ autoware-perception-msgs autoware-planning-msgs autoware-system-msgs autoware-vehicle-msgs tier4-perception-msgs tier4-planning-msgs tier4-system-msgs tier4-vehicle-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tier4_auto_msgs_converter package";
    license = with lib.licenses; [ asl20 ];
  };
}
