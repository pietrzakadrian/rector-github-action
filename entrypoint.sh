#!/bin/sh -l

set -e

if [ -n "$1" ] && [ -n "$2" ]; then
   /composer/vendor/bin/rector process $1 --dry-run --config=$2
else
    echo "Missing required argument: directories path or config file"
fi