#!/usr/bin/env bash
files=$(echo "$@" | tr ' ' ',')
if [ -z "$files" ]
then
  echo "Warning: no proto files changed"
  exit 0
else
  buf lint --path ${files}
fi

