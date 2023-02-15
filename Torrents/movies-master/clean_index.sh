#!/bin/bash

# find file called "movie_masters.html" in the current folder
filename="movie_masters.html"

# check if file exists
if [ -f "$filename" ]; then
  # store the contents of the file in a variable
  file_contents=$(<"$filename")

  # remove lines that contain "<li><a href="index.html">"
  file_contents=`echo "$file_contents" | grep -v "<li><a href=\"index.html\">"`

  # write the modified contents back to the file
  echo "$file_contents" > "$filename"

  # print success message
  echo "Success: index.html links removed from $filename"
else
  # print error message if file not found
  echo "Error: $filename not found in current folder."
fi
