#!/bin/bash

#Copy from current directory's file to /root/work/test/

DIR=/root/work/test/

#No newline echo
echo -n "From:" 
pwd

echo "To:  ${DIR}"

cp $1 $DIR/
echo "done" 
