#!/bin/sh
# Create the gradle wrapper specifically pinned to version 7.6
mkdir emptydir || exit 1
cd emptydir || exit 1
touch settings.gradle
touch build.gradle
gradle wrapper --gradle-version 7.6
mv gradle* .. || exit 1
cd ..
rm -rf emptydir
