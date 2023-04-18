#!/bin/bash

cd packages/flutter_nekoton_bridge/js
npm ci
npm run build
npm run clean

if [[ $1 == "test" ]]; then
    if git diff --exit-code; then
        echo "No changes, all ok"
        exit 0
    else
        echo "Changes detected, please commit them before running tests"
        exit 1
    fi
fi

