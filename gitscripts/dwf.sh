#!/bin/sh -x
# dwf, aka "Done With Feature" script: deletes current branch and puts you back on master
ref=$(git symbolic-ref HEAD 2> /dev/null) || exit 0
CURRENT="${ref#refs/heads/}"
git checkout develop
git branch -d ${CURRENT}
