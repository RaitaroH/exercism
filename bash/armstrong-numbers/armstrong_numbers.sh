#!/usr/bin/env bash
input=$1
res=0
length=$(( $(echo $input | wc --chars) - 1))

while [ $input != 0 ]; do
  rem=$(($input%10))
  res=$(( $res + $rem**$length ))
  input=$(($input/10))
done

[ $res = $1 ] && echo "true" || echo "false"
