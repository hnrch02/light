#!/bin/sh

# Variables
name="light"
output=""
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
  output+="$banner"
fi

# Loop over all source files
index=0
count=`find src -name "*.css" | wc -l`
for file in src/*.css ; do
  index=$((index+1))

  output+=`cat $file`

  if [[ "$index" -ne "$count" ]]; then
    output+="\n\n\n"
  fi
done

# Write output to file
echo "$output" >> $name.css