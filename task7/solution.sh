#!/bin/bash
set -e

find . -maxdepth 1 -mindepth 1 -name ".*" ! -name "." ! -name ".." \
    -exec basename {} \; | sort