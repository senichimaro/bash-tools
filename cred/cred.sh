#!/bin/bash

function cred(){
if [[ $1 == "bit" ]];
     then
          eval "$(ssh-agent -s)"
          ssh-add ~/.ssh/laugsg-bitbucket
          git config --local user.name "laugsg"
          git config --local user.email "lautaro.grucci@joingsg.com"
elif [[ $1 == "laugit" ]];
     then
          eval "$(ssh-agent -s)"
          ssh-add ~/.ssh/laugsg-github
          git config --local user.name "laugsg"
          git config --local user.email "lautaro.grucci@joingsg.com"
elif [[ $1 == "senichi" ]];
     then
          eval "$(ssh-agent -s)"
          ssh-add ~/.ssh/senichi
          git config --local user.name "senichi"
          git config --local user.email "senichimaro@gmail.com"
elif [[ $1 == "-h" ]];
     then
          echo "option: bit          > keys for bitbucket as laugsg"
          echo "option: laugit       > keys for github as laugsg"
          echo "option: senichi      > keys for github as senichi"
          echo "default: who         > show credentials for working directory"
elif [[ $1 == "who" || -z $1 ]];
     then
          git config --local user.name
          git config --local user.email
          git remote -v
fi
}