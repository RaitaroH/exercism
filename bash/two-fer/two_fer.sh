#!/usr/bin/env bash

  input=$1

  # Add your code here
  [[ -z $input ]] && echo "One for you, one for me." || echo "One for $input, one for me."
