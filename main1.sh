#! /usr/bin/bash

# Variabel
path=/hdfs/data/data1
directory=data1

# Check if directory exists
if [ -d $path/$directory ]; then
	echo "There is ${directory} Directory Exists!"
else
	echo "${directory} Directory Not Exists!"
	mkdir $path/$directory
fi
