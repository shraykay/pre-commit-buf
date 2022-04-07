#!/usr/bin/env bash
set -x
files=$(echo "$@" | tr ' ' ',')

if [ $# -gt 0 ]; then
  echo "Linting: ${files}"
  buf lint --path ${files}
else
  echo "Warning: no proto files changed"
  exit 0
fi

