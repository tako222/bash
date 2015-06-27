#!/bin/bash

#Copy from current directory's file to /root/work/test/

DIR=/root/work/test/

# Check argument
if [ ! $1 ]; then
  echo "Please input argument"
  exit 1
fi

#No newline echo
echo -n "From:" 
pwd

echo "To:  ${DIR}"

cp $1 $DIR/
echo "done" 
