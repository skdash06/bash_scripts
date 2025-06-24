#!/bin/bash
git init

echo "Enter your user name:"
read a
git config user.name "$a"

echo "Enter your user email:"
read b
git config user.email "$b"

echo "Enter your no. of files"
read n
for (( i=1; i<=n; i++ ))
do
    echo "Enter your file name"
    read f
    git add "$f"
done

echo "Enter your commit message"
read s
git commit -m "$s"

echo "Enter your repo link here"
read rl
git remote add origin "$rl"

echo "Enter your branch name"
read br
git push origin $br


