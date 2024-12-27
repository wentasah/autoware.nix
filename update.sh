#!/usr/bin/env bash

set -e

for url in \
    https://github.com/autowarefoundation/autoware.git \
    https://github.com/astuff/pacmod3_msgs.git
do
    dir=$(basename $url .git)
    if [[ $(git --git-dir="$dir"/.git remote get-url origin) = "$url" ]]; then
       git pull
    else
        git clone $url
    fi
done

pushd autoware
mkdir -p src
# Tag previous version
vcs custom src --git --args tag --force autoware.nix
# Update repositories
vcs import src < autoware.repos
# Reapply custom patches (cherry-pick fails on empty commit ranges so we have to ignore all errors)
vcs custom src --git --args cherry-pick HEAD..autoware.nix || :
popd

mkdir -p pkgs
rm pkgs/*
# shellcheck disable=SC2046
ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch --patches $(find . -name package.xml|grep -v ament_cmake)
