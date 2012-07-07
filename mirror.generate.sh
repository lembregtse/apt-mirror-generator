#!/bin/bash

# This script generates an apt-mirror valid config file 
# based on a local config file as specified in mirror.config.example
#
# Written by Eric Lembregts <eric@lembregts.eu>
# Project @ http://www.github.com/lembregtse/apt-mirror-generator

function usage() {
cat - >&2 <<EOF
mirror.generate.sh, create an apt-mirror config file.
   usage: mirror.generate.sh [mirror.generate.sh config file]
EOF
  exit 1
}

if test "$?" -ne 0; then
  usage
fi

FILENAME=$1 #argument 1 = filename of config
