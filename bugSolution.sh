#!/bin/bash

# This script finds the largest number in a list using awk for improved precision.

numbers="10.5 20.2 15.7 25.9 18.1"

largest=$(echo $numbers | awk '{max = $1; for (i = 2; i <= NF; i++) if ($i > max) max = $i; print max}')

echo "Largest number: $largest"