#!/bin/bash
echo "Argument with  \$@(list):"

for arg in "$@"
do
  echo "[$arg]"
done
echo
echo "Arguments with \$*(String):"
for arg in "$*"
do
  echo "[$arg]"
done
