#!/bin/bash

LATEST_VERSION=$(
    cat Dockerfile | \
    head -n 1 | \
    grep -E -oh '[0-9](\.[0-9](\.[0-9])?)?$'
)

echo "Latest version: $LATEST_VERSION"

if [[ ! -z $GITHUB_OUTPUT ]]; then
    echo "LATEST_VERSION=$LATEST_VERSION" >> $GITHUB_OUTPUT
fi
