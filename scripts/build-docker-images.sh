#!/bin/bash

docker run \
       -v $(pwd):/nix-intro/ \
       -w /nix-intro/ \
       --rm -ti \
       nixos/nix nix-build
