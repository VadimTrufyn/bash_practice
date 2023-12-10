#!/bin/bash
sum=0

# Iterate over all command-line arguments
for i in "$@"; do
    sum=$((sum + i))
done

echo "Sum of arguments is $sum"
echo "Number of elements is $#"

# Calculate the average
avg=$((sum / $#))
echo "Average is $avg"

