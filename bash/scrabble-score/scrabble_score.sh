#!/usr/bin/env bash

[ -z $1 ] && echo 0 && exit 0

input=$(echo "$1" | tr '[:upper:]' '[:lower:]') #for speed

declare -a letters=(a b c d e f g h i j k l m n o p r s t u v w x y z q) #for better alignment, q at the end
 declare -a points=(1 3 3 2 1 4 2 4 1 8 5 1 3 1 1 3 1 1 1 1 4 4 8 4 10 10)
nr=0

for (( k=0; k<=${#letters[@]}; k++)); do
    found=$(echo "$input" | grep -o "${letters[$k]}" | wc -l) #nr of times letter was found
    score=${points[$k]} #the score of the letter
    nr=$(( nr + score*found )) #final score
    # if [[ ${letters[$k]} = $(echo "${input: -1}") ]] && [[ $found = 1 ]]; then break; fi #stop at last letter
done

# A more convoluted way is to do it letter by letter for better speed
# stop=$(( $(echo scramble | wc --char) - 1))
#
# for (( k=0; k<$stop; k++)); do
  # echo ${input:$((0+k)):1};
# done

echo $nr
