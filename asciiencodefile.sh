#!/bin/bash
string=$(cat $1 | od -An -vtu1 | sed 's/ /,/g' | sed 's/,,/,/g' )
string2=${string#","}
string3=$(echo $string2 | sed 's/,,/,/g' | sed 's/,10,/,/g'| sed 's/,10,/,/g'| sed 's/,10,/,/g'  | tr -d ' ' )
echo $string3 | sed 's/,9,/,/g'| sed 's/,9,/,/g' | sed 's/,9,/,/g' | sed 's/,9,/,/g' | sed 's/,10,/,/g' | sed 's/,10$//g'
