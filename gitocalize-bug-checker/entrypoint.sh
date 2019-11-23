#!/bin/sh

files=$(git show -m --name-only -1 --format="format:" | grep --color=never -iE '*.md')

if [ "$files" != "" ]; then
  grep -nHE --color '\{[[:alpha:]]{1,4}[[:digit:]]{1,2}\}' $files
  result=$?
  if [ $result = 0 ]; then
    exit 1
  fi
fi
