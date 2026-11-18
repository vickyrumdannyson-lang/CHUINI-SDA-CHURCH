#!/usr/bin/env bash
# Inajenga APK ya Android. Inaendeshwa ndani ya Docker (Dockerfile.android).
set -euo pipefail
npx expo prebuild --platform android --clean --no-install
cd android
./gradlew assembleRelease --no-daemon -PreactNativeArchitectures=arm64-v8a,armeabi-v7a
mkdir -p /out
cp app/build/outputs/apk/release/app-release.apk /out/chuini-sda.apk
echo "APK tayari: /out/chuini-sda.apk"
