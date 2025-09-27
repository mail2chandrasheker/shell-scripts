#!/bin/bash
echo "case 1:success"
exit 0

echo "Case 2: file not found"
[ -f /no/file ] || exit  1

echo "case 3: command not found"
no_command

echo "case 4: permission denied"
./myscripts.sh
