#!/bin/bash -x
randomcheck=$(( RANDOM % 2 + 1 ))
case $randomcheck in
1) echo "heads"
    echo "you win"
;;
2) echo "tails"
     echo "you win"
;;
*)echo "null"
;;
esac
