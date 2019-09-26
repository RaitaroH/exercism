#!/usr/bin/env bash

# Test for empty input
if [ $# -eq 0 ]; then
  echo "Usage: ./pangram.sh 'words'"
  exit 1
fi

declare -a letters=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
nr=0

# Starting at 1, or make nr=-1
# tr used for mixed case
for (( k=1; k<=${#letters[@]}; k++)); do
  if echo "$1" | tr '[:upper:]' '[:lower:]' | grep -q "${letters[$k]}"; then
    nr=$(( $nr + 1))
  fi
done

[ $nr = ${#letters[@]} ] && echo "true" || echo "false"
