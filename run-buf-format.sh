#!/usr/bin/env bash
files=$(echo "${@:2}" | tr ' ' ',')
buf format --diff --exit-code --path ${files}
