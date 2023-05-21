#!/bin/sh -l

set -e

if [ -n "$1" ]; then
   /composer/vendor/bin/rector process --dry-run --config=$1
else
    echo "Missing required argument: config file path"
fi