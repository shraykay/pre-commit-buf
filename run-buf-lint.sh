#!/usr/bin/env bash
set -x
files=$(echo "$@" | tr ' ' ',')

if [ -z "${files}" ]
then
  echo "Warning: no proto files changed"
  exit 0
else
  echo "Linting: ${files}"
  buf lint --path ${files}
fi

