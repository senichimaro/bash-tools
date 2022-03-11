#!usr/bin/bash


function pr(){
    FILES=$(git status -s | sed -e 's/\(\?\)//g')
    echo "$FILES" | xargs git add
    git commit -m $1
    git push origin $2
}