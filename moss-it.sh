#!/bin/bash

echo "input a project number: [1, 2, 3]"
read pNum

./moss -l c -d Project_$pNum_*/AOS-P$pNum-*/*.c
./moss -l java -d Project$pNum/AOS-P$pNum-*/*.java

# to test the files inside project folders... should be like this, but I forgot 0-0
# ./moss -l c -d Project_$pNum_*/AOS-P$pNum-*/*/*.c
# ./moss -l java -d Project$pNum/AOS-P$pNum-*/*/*.java
