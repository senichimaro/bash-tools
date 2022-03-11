#!/bin/sh
for file in *;
do
    newfile=$(echo $file | sed 's|[ ]|\-|g');
    mv "$file" "$newfile" && echo "rename $file to $newfile"
done