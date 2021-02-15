#!/usr/bin/env bash

mkdir $1
cd $1
git init newGit
mkdir bin
mkdir include
mkdir lib
mkdir share
mkdir man
mkdir info
touch README.md/$1
touch .gitignore
git add bin include lib share man info $1
git commit -m "Create initial structure."
