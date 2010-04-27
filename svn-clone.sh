#!/bin/sh

svn_url=$1
name=$2
repo_path=$3

abs_repo_path=/home/git/repositories/$repo_path

if test $# != 3
then
	echo "USAGE: $0 <svn-url> <name> <repo-path>
	EXAMPLE: $0 https://bear/svn/ibar/users/hua/flvsplitter flvsplitter letou/flvsplitter.git
	"
	exit
fi


git svn clone -A/home/ping/authors $svn_url $name
git clone --bare $name $abs_repo_path
( cd $name && git remote add origin $abs_repo_path)


