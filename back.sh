#!/bin/bash

if [[ -z "$1" || ! "$1" =~ ^[0-9]+$ ]]; then
    echo "Usage: back.sh <number_of_levels>"
    exit 1
fi

path_variable=""
for i in $(seq 1 "$1"); do
    path_variable+="../"
done

cd "$path_variable" || { echo "Failed to change directory"; exit 1; }