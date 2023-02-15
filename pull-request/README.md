# pr : Pull-Request made easy
Track files listing them and prevent unhandled bulk staging from global commands like `git add .` Add, commit and push made easy only for the files you are working on.

## How to activate

`source ~/.my_custom_commands.sh`

## use
```
# (required) commit message
# (required) branch
pr [commit message] [branch]
```

## How it works
Based in the output of `git status -s`, that provides a flies list status, processes it using `sed` into a pipeline to get single text filenames. Then git adds this changed files, commits with [commit message] and push to [branch].

## futere ideas
* [ ] path option : pr [path] ...
* [ ] check required options
