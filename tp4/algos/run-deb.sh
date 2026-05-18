#!/bin/sh

NAME=$(realpath "$0")

cd $(dirname "$0")
echo ""
echo "*******************************************************************************"
echo "run-deb: ${NAME}"
echo "*******************************************************************************"

cabal clean
cabal build && cabal test || exit 1
cabal clean

