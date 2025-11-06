#!/bin/bash

writefile=$1
writestr=$2

if [[ -z $writefile ]] || [[ -z $writestr ]]; then
  echo "there's missing parameter"
  exit 1
fi

path_file=$(dirname ${writefile})

base_file=$(basename  ${writefile})

if [ ! -d ${path_file} ]; then
  mkdir -p ${path_file}
fi

echo ${writestr} > ${writefile}

if [ $? -ne 0 ]; then
    echo "Creating file failed !!"
    exit 1 
fi



