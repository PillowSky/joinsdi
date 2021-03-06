#!/bin/bash

#clean up
rm -rf dist
rm -rf dist.zip

#mkdir
mkdir dist

#cp
cp application dist -r
cp static dist -r
cp system dist -r
cp index.php dist
cp .htaccess dist

#filter
find dist -name "*.coffee" -exec rm -fv {} \;
find dist -name "*.less" -exec rm -fv {} \;
find dist -name "*.jade" -exec rm -fv {} \;
find dist -name "*.json" -exec rm -fv {} \;

#zip
zip  dist.zip dist -r
