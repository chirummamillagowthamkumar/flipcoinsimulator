#!/bin/bash
echo "give value of a"
read a
echo "give value of b"
read b
echo "give value of b"
read c

z=$(($a+$b+$c))
echo "values" $z
