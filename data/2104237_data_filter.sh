#!/bin/bash

# Declaring varibles for positional arguments
file_name=$1
field_name=$2
field_value=$3


#Creating name of output fule
output="${file_name:0:2}"_"$field_name"_"$field_value"

#Numner of lines
lines_num=$( grep -iw "$field_value" "$file_name"|wc -l )

#Column Headers
columns=$(head -1 $file_name)

#Data which fits
fits=$( grep -iw "$field_value" "$file_name" )


echo $1, $2, $3, $lines_num >> $output.csv
echo $columns >> $output.csv
echo $fits >> $output.csv




