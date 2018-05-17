#!/bin/bash

# Explicitly declare a as array
declare -a a

# create array declaring single element
a[0]=single

# create array with list
a=(1 second 5 fourth)

secondElement=${a[1]}

lastElement=${a[${#a[@]}-1]}

allElements=${a[@]}

length=${#a[@]}

indexed=([0]=1 [1]=2 [4]=7)

keys=${!indexed[@]}


# --


# arrays from strings
str='this is a string'
b=($str)

# arrays from non-spaced strings
b=($(echo "this, is, a, comma, separated, string" | tr  "," " "))

# destroy element
unset b[2]

# iterate
for s in ${b[@]}; do
  echo $s
done

# destroy array 
unset b
