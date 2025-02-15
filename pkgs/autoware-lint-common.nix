# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs.new --fetch --use-per-package-src --patches
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-copyright, ament-cmake-core, ament-cmake-cppcheck, ament-cmake-export-dependencies, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-lint-common";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware_cmake";
    rev = "890e31281d293b87933b1ad3c1d2846c88d77ffa";
    sha256 = "191fpr6lbfrahfxrazkw7iqr6jzdis13n03q8yi4dghh9vl7iqmh";
    sparseCheckout = ["autoware_lint_common/"];
    nonConeMode = true;
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/autoware_lint_common/";
  buildInputs = [ ament-cmake-export-dependencies ];
  propagatedBuildInputs = [ ament-cmake-copyright ament-cmake-core ament-cmake-cppcheck ament-cmake-lint-cmake ament-cmake-test ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-test ];

  meta = {
    description = "The list of commonly used linters in Autoware";
    license = with lib.licenses; [ asl20 ];
  };
}
