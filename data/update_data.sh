#!/usr/bin/bash

# Update the data from sciensano's website
set -ex

for filename in $(cat filenames.txt)
do
  wget https://epistat.sciensano.be/Data/"${filename}" -O "${filename}"
done

