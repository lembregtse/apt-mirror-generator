#!/bin/bash

# This script generates an apt-mirror valid config file 
# based on a local config file as specified in mirror.config.example
#
# Written by Eric Lembregts <eric@lembregts.eu>
# Project @ http://www.github.com/lembregtse/apt-mirror-generator

function usage() {
cat - >&2 <<EOF
mirror.generate.sh, create an apt-mirror config file.
   usage: mirror.generate.sh [-o|--output file] [-h|--help] config
EOF
  exit 1
}

if test "$#" -eq 0 || test "$#" -gt 3; then
  usage
fi

FILENAME=""
OUTPUTFILENAME="mirror.output"

while test "$#" != 0; do
  case "$1" in 
    -o|--output)
      shift
      OUTPUTFILENAME="$1"
      ;;
    -h|--help)
      usage
      ;;
    $1)
      FILENAME="$1"
      ;;
  esac
  shift
done
