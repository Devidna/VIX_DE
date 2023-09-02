#!/bin/bash

# Variables
path=/hdfs/data/data1
name_of_directory=data1
dir=$path/$name_of_directory
filename_excel=daily_market_price.xlsx
source_dir=/local/data/market
target_dir=$path/$name_of_directory

# Check if directory exists
if [ -d $dir ]; then
    echo "There is ${name_of_directory} Directory Exists!"
else
    echo "${name_of_directory} Directory Not Exists!"
    mkdir $dir
fi

# Copy file from source directory to target directory
cp $source_dir/$filename_excel $target_dir

# Create log file if success
if [ -f $target_dir/$filename_excel ]; then
    echo "File Moved Successfully" > $target_dir/log.txt
fi

