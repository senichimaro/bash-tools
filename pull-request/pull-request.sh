#!usr/bin/sh    

function pr(){
    FILES=$(git status -s | sed 's/\(?\)//g' | sed 's/[A-Z]//' | sed 's/ *//')
    echo "$FILES"
    echo "$FILES" | xargs git add
    git commit -m $1
    git push origin $2
}