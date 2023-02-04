#!/bin/sh

git submodule update --init --recursive
git submodule foreach --recursive git fetch --all
git submodule foreach git reset --hard origin/master