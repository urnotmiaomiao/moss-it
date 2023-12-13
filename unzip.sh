#!/bin/bash

path=$1
type=$2

if [ -z "$type" ]; then
	type="zip"
fi

mkdir unzip-zip
mkdir unzip-tar
mkdir unzip-rar

files=$(ls $path*.$type)

case "$type" in
	zip )
		echo "===unzip zip==="
		for filename in $files
		do
			unzip -o -d unzip-zip/${filename##*/} $filename
		done 
		;;
	rar )
		echo "===unzip rar==="
		for filename in $files
		do
			mkdir unzip-rar/${filename##*/}
			unrar e $filename unzip-rar/${filename##*/} 
		done
		;;
	tar.gz )
		echo "===unzip tar.gz==="
		for filename in $files
		do
			mkdir unzip-tar/${filename##*/}
			tar -zxvf $filename -C unzip-tar/${filename##*/} 
		done 
		;; 
	
	
esac

