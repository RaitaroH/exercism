#!/usr/bin/env bash

check(){ [ $(( $1 % $2 )) = 0 ] && output+=$3 ;}

input=$1

# Add your code here
check $input 3 Pling
check $input 5 Plang
check $input 7 Plong
[ -z $output ] && echo $input || echo $output
output=""
