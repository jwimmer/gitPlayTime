#!/bin/sh -x
# Git workflow ship script from: http://reinh.com/blog/2008/08/27/hack-and-and-ship.html
# git name-rev is fail
ref=$(git symbolic-ref HEAD 2> /dev/null) || exit 0
CURRENT="${ref#refs/heads/}"
git checkout develop
git merge ${CURRENT} --squash
git push origin develop
git checkout ${CURRENT}
