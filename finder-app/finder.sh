#!/bin/bash

filesdir=$1
searchstr=$2

if [[ -z $filesdir ]] || [[ -z $searchstr ]]; then
  echo "there's missing parameter"
  exit 1
fi

if [ ! -d "${filesdir}" ]; then
  echo "Path ${filesdir} does not exist."
  exit 1
fi

#filecount="$(ls -l ${filesdir} | wc -l)"

filecount="$(find ${filesdir} -type f | wc -l)"

count_lines=$(grep -iR $searchstr ${filesdir} | wc -l)

echo "The number of files are ${filecount} and the number of matching lines are ${count_lines}"


