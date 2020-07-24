#!/bin/bash
parttime=8
echo "enter a value"
read a
echo "enter b value"
read b
echo "enter c value"
read c
z=a+b*c
declare -A part

part[$z]=""
echo ${!part[@]}
