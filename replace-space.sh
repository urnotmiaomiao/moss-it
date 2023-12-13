#!/bin/bash

path=$1
find ./$path -name "* *"|                            
while read name
do
        na=$(echo $name | tr ' ' '_')     
        mv "$name" $na
done
