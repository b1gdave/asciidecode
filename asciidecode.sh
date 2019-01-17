#!/bin/bash
list=$(echo $* | tr ',' ' ')
printf '%b\n' $(printf '\\%03o' $list)
