#!/bin/sh

# Variables
name="light"
banner="/*
   __ _       _     _
  / /(_) __ _| |__ | |_
 / / | |/ _\` | '_ \| __|
/ /__| | (_| | | | | |_
\____/_|\__, |_| |_|\__|
        |___/

Light is a browser- and extension independent skin for GitHub which aims at taking away some visual weight of GitHub's interface.

Feel free to contribute at https://github.com/hnrch02/light
Maintained by @hnrch02, released under the WTFPL license.

*/\n\n\n"

# Clear the output file
rm -f $name.css

# Banner
if [[ $1 != "--no-banner" ]]; then
  echo "$banner" >> $name.css;
fi

# Append all source files
cat src/*.css >> $name.css