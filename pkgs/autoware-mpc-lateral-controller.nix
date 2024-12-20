# Automatically generated by: ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch
{ lib, buildRosPackage, fetchFromGitHub, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-control-msgs, autoware-interpolation, autoware-lint-common, autoware-motion-utils, autoware-osqp-interface, autoware-planning-msgs, autoware-trajectory-follower-base, autoware-universe-utils, autoware-vehicle-info-utils, autoware-vehicle-msgs, diagnostic-msgs, diagnostic-updater, eigen, geometry-msgs, rclcpp, rclcpp-components, std-msgs, tf2, tf2-ros, tier4-debug-msgs }:
buildRosPackage rec {
  pname = "ros-rolling-autoware-mpc-lateral-controller";
  version = "0.39.0";

  src = fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "autoware.universe";
    rev = "4a3de4915116b5d0e3db50f1976e9dd52edc0e20";
    sha256 = "05xwxkm7sq9vs9a0bknpmnms4xdxbviylrr87rp3cxj02wla4gdh";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/control/autoware_mpc_lateral_controller/";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common eigen ];
  propagatedBuildInputs = [ autoware-control-msgs autoware-interpolation autoware-motion-utils autoware-osqp-interface autoware-planning-msgs autoware-trajectory-follower-base autoware-universe-utils autoware-vehicle-info-utils autoware-vehicle-msgs diagnostic-msgs diagnostic-updater eigen geometry-msgs rclcpp rclcpp-components std-msgs tf2 tf2-ros tier4-debug-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "MPC-based lateral controller";
    license = with lib.licenses; [ asl20 ];
  };
}
