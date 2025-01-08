#!/bin/bash
# Author: Samyog Ghimire
# Date: 07/01/2025

# This script contains Array declaring and manipulation

my_array=("apple" "banana" "mango" "cherry")

# Accessing elements in the array
echo "First element: ${my_array[0]}"
echo "Second element: ${my_array[1]}"

# Length of the array
array_len=${#my_array[@]}
echo "Length of array is: $array_len"

# Looping through the array
echo "All elements in the array:"
for element in "${my_array[@]}"; do
  echo "$element"
done

# Adding a new element to the array
my_array+=("arr")
echo "Array after adding 'arr': ${my_array[@]}"

# Removing an element from the array
unset my_array[1]
echo "Array after removing second element: ${my_array[@]}"

# Getting index of the mango from the array
for i in "${!my_array[@]}"; do
  if [ "${my_array[$i]}" == "mango" ]; then
    echo "Index of mango: $i"
  fi
done
