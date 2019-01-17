#!/bin/bash
string=$(echo -n $1 | od -An -vtu1 | sed 's/ /,/g' | sed 's/,,/,/g' )
string2=${string#","}
echo $string2 | tr -d ' '
