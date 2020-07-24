#!/bin/bash
echo "enter a value"
read  a
echo "enter b value"
read b
echo "enter c value"
read c
z=$(($c+$a/$b))
declare -A uccompute
uccompute[$z]=""
echo "${!uccompute[@]}"
