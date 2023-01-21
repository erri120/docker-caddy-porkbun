#!/bin/bash

LATEST_VERSION=$(
    cat ../Dockerfile | \
    head -n 1 | \
    grep -E -oh '[0-9](\.[0-9](\.[0-9])?)?$'
)

if [[ ! -z $GITHUB_OUTPUT ]]; then
    echo "LATEST_VERSION=$LATEST_CADDY_VERSION" >> $GITHUB_OUTPUT
else
    echo $LATEST_VERSION
fi
