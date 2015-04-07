#!/bin/bash
git branch tmp
git checkout tmp
git add . --all
#echo "please input commit message:"
#read message
git commit -m "add books"
git checkout master
git merge tmp
git push origin master
expect "Username for 'https://github.com':"
send "wolffzheng\r"
expect "Password for 'https://wolffzheng@github.com':"
send "Wolff8341\r"
git branch -d tmp

