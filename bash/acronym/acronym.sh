#!/usr/bin/env bash

# This is a bash script template in order to help you quick start any script.
# It contains some sensible defaults, you can learn more by visiting:
# https://google.github.io/styleguide/shell.xml
#
# /!\ Please remove all the comments when you use this on other exercises

# This option will make the script exit when there is an error
# set -o errexit
# This option will make the script exit when it tries to use an unset variable
# set -o nounset

main() {
  # A string variable containing only the FIRST argument passed to the script,
  # you can use input="$@" to get a string with ALL arguments

  # Add your code here

  # Test for empty input
  if [[ $# -eq 0 ]]; then
    echo 'Usage: hamming.sh <string1> <string2>'
    exit 1
  fi

  echo $1 | sed -e 's/-/\ /g' -e 's/_/\ /g' | sed 's/\(.\)[^ ]* */\1/g' | tr '[:lower:]' '[:upper:]'
}


# Calls the main function passing all the arguments to it via '$@'
# The argument is in quotes to prevent whitespace issues
main "$@"
