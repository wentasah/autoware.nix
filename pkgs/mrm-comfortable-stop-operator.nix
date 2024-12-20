# Automatically generated by: ros2nix --flake --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-lint-auto, autoware-adapi-v1-msgs, autoware-cmake, autoware-lint-common, rclcpp, rclcpp-components, std-msgs, std-srvs, tier4-planning-msgs, tier4-system-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-mrm-comfortable-stop-operator";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/system/mrm_comfortable_stop_operator/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-v1-msgs rclcpp rclcpp-components std-msgs std-srvs tier4-planning-msgs tier4-system-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The MRM comfortable stop operator package";
    license = with lib.licenses; [ asl20 ];
  };
}
