#!/bin/bash
rm -rf dist/css/
mkdir dist/css/
rm -rf dist/sass/
mkdir dist/sass/
cp web/assets/css/slimgrid.css dist/css/
cp -r src/sass/Slimgrid/ dist/sass/Slimgrid
cp -r src/sass/slimgrid.scss dist/sass/
