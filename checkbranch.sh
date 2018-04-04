#!/bin/bash
if [ -d .git ]; then
  BRANCH=`git rev-parse --abbrev-ref HEAD`
  if [ $BRANCH = 'master' ]; then
    echo 'master branch'
  else
    echo 'not master'
  fi
elif [[ $CODEBUILD_INITIATOR = *"test"* ]]; then
  echo 'CODEBUILD_INITIATOR contains "test"'
fi
