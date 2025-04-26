#!/bin/bash
# Script to read students.csv, calculate average marks, and write to averages.txt

INPUT_FILE="students.csv"
OUTPUT_FILE="averages.txt"

# Clear the output file first (to avoid duplication)
> "$OUTPUT_FILE"

# Skip the header and process each line
tail -n +2 "$INPUT_FILE" | while IFS=',' read -r name dob math science english
do
    # Calculate average
    avg=$(echo "scale=2; ($math + $science + $english) / 3" | bc)
    # Save the name, date of birth, and average to the output file
    echo "$name,$dob,$avg" >> "$OUTPUT_FILE"
done
