#!/bin/bash


minversion='3.0.0'

echo "Checking melos version..."
version=$(melos --version)
cmp=$(bash scripts/semver-tool/semver compare $version $minversion)

if (($cmp < 0)); then
  echo "Outdated melos version detected: $version. Minimum is $minversion. Please, upgrade using 'dart pub global activate melos'"
  exit 1
fi

echo "melos version ok: $version"
exit 0
