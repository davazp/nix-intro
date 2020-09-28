#!/bin/bash

# We need to build docker images on Linux, so let's do it inside
# docker itself to try.

docker run \
       -v $(pwd):/nix-intro/ \
       -w /nix-intro/ \
       --rm -ti \
       nixos/nix \
       /bin/sh -c 'nix-build docker.nix && cp result docker-image.tar.gz'
