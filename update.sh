#!/usr/bin/env bash

url=https://github.com/autowarefoundation/autoware.git
if [[ $(git --git-dir=autoware/.git remote get-url origin) = "$url" ]]; then
   git pull
else
    git clone $url
fi

pushd autoware
mkdir -p src
vcs import src < autoware.repos
popd

mkdir -p pkgs
rm pkgs/*
# shellcheck disable=SC2046
ros2nix --output-as-nix-pkg-name --output-dir pkgs --fetch $(find . -name package.xml|grep -v ament_cmake)
