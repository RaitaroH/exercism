#!/usr/bin/env bash

input=$1

# Test for empty input
if [ $# -eq 0 ]; then
  echo "Usage: ./error_handling <greetee>"
  exit 1
fi

# Test if anything besides $1 was given
if [ -z $2 ]; then
  echo "Hello, $input"
else
  echo "Usage: ./error_handling <greetee>"
  exit 1
fi
