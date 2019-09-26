#!/usr/bin/env bash

if [[ $# -eq 0 ]]; then
  echo 'Usage: hamming.sh <string1> <string2>'
  exit 1
fi

if [[ $1 == "" ]]; then
  if [[ $2 == "" ]]; then
    echo 0
    exit 0
  else
    echo 'left strand must not be empty'
    exit 1
  fi

  if [[ -z $2 ]]; then
    echo 'Usage: hamming.sh <string1> <string2>'
    exit 1
  fi
fi

if [[ -n $1 && $2 == "" ]]; then
  echo 'right strand must not be empty'
  exit 1
fi

if [[ $(echo $1 | wc --chars) != $(echo $2 | wc --chars) ]]; then
  echo 'left and right strands must be of equal length'
  exit 1
fi

cmp -bl <(echo "$1") <(echo "$2") | wc -l
