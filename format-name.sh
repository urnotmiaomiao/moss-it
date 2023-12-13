#!/bin/bash

path=$1
type=$2
if [ -z $type ]; then
	type="zip"
fi

files=$(ls $path*.$type)
for filename in $files 
do
	mv $filename ${filename%_attempt*}.$type
done

