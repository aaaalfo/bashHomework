#!/bin/bash
set -e

find . -maxdepth 1 -name ".*" ! -name "." ! -name ".." | sort
