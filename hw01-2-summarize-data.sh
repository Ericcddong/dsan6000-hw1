#!/bin/bash

# hader
echo "filename,size,num_lines" > wikimedia_data_summary.csv

# get filename, size, name number of lines of each csv file
for file in data/*.csv
do
    filename=$(basename "$file")
    size=$(ls -l -h "$file" | awk '{print $5}')
    num_lines=$(wc -l < "$file")

    echo "$filename,$size,$num_lines" >> wikimedia_data_summary.csv     # write to summary csv
done