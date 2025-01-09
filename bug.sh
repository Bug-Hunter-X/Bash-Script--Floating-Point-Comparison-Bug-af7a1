#!/bin/bash

# This script attempts to find the largest number in a list,
# but contains a subtle bug related to floating-point comparisons.

numbers="10.5 20.2 15.7 25.9 18.1"

largest=0

for num in $numbers; do
  if (( $(echo "$num > $largest" | bc -l) )); then
    largest=$num
  fi
doneln

echo "Largest number: $largest"