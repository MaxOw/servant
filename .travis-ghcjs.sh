#/usr/bin/env bash
set -ev

tinc
cabal exec which hspec-discover
borf

hspec-discover --version
cd servant-client
./test/ghcjs/run-tests.sh
