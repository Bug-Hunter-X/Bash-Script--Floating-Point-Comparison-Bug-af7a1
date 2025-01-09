# Bash Script: Floating-Point Comparison Bug

This repository demonstrates a subtle bug in a bash script designed to find the largest number within a list of floating-point numbers. The script utilizes the 'bc' command for floating-point arithmetic, however, it suffers from imprecision in comparisons. 

## Bug Description
The script iterates through a list of floating-point numbers, using 'bc' to compare the current number with the largest number identified so far.  The comparison is prone to errors due to inherent limitations in floating-point representation.  This can lead to the script incorrectly identifying the largest number in certain cases.

## Bug Location
The bug is located within the 'if' statement's condition which uses 'bc' for the comparison.

## How to Reproduce
1. Clone this repository.
2. Run the script using `bash bug.sh`
3. Observe that the script might not accurately identify the largest number.

## Solution
The solution addresses the issues by using `awk` for floating-point comparisons, which offers improved precision and reliability.