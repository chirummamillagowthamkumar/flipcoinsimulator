#!/bin/bash
echo "give value of a"
read a
echo "give value of b"
read b
echo "give value of b"
read c

declare -A  abc


abc[$a]=""
abc[$b]=""
abc[$c]=""
echo "values" ${!abc[@]}
