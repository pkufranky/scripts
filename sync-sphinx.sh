#!/bin/sh

while true
do
	date >sync-sphinx.log
	for d in sphinx
	do
		(
		echo "In $d"
		cd $d
		git svn rebase
		git push --mirror origin
		)
	done >sync-sphinx.log 2>&1
	sleep 1d
done
