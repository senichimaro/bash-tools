# rename from spaces to dashes
At the current location, check all files to replace those with blank space into file name.

## use
It runs at current location.
```
./rename.sh
```

## How it works
Based in `sed` command regex, looks for  filename whitespaces to replace them by middle-dash.

## Future ideas
* [ ] add option to replace specific patter
* [ ] add options to remove/include prefix/sufix