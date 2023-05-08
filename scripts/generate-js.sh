#!/bin/bash

cd packages/flutter_nekoton_bridge/js
npm ci
npm run build
npm run clean
