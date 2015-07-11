#!/bin/bash

# Check answer
check(){
  read ANSWER
  if [ $ANSWER != "y" ]
  then
    exit 1
  fi
}

echo "Show git status"
git st

echo "Show git log"
git log

echo "Show branch"
git br

echo -n "Commit OK?(y/N): "
check

echo -n "Please input commit message: "
read MESSAGE
echo -n "Message is [$MESSAGE]. OK?(y/N): "
check

git commit -m "$MESSAGE"

echo -n "Please input push branch: "
read BRANCH
echo -n "Branch is $BRANCH. OK?(y/N): "
check

git push origin $BRANCH
