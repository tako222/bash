#!/bin/bash

# Echo all arguments

# Set arguments count
ARG_COUNT=$#
if [ $ARG_COUNT -eq 0 ]; then 
  echo "argument is zero"
  exit 1
fi

# Echo all
COUNT=1
while [ $COUNT -le $ARG_COUNT ]
do
  echo -n "[$1]"
  if [ `expr $COUNT % 10` -eq 0 ]; then
    echo 
  fi
  # Shift arguments e.g. [a b c...]->[b.c...]
  shift
  COUNT=`expr $COUNT + 1`
done

#Last new line
echo 
