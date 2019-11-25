#!/bin/sh -l
bumpversion $1 --allow-dirty
file_path=$2
latest=$(cat $file_path)

echo ::set-output name=version::$latest