#!/usr/bin/env bash

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
vcs import src < autoware.repos
popd

mkdir -p pkgs
rm pkgs/*
# shellcheck disable=SC2046
ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch $(find . -name package.xml|grep -v ament_cmake)
